import hashlib
import os

import flask
import graphene
import jwt
from flask_graphql import GraphQLView
from graphene_sqlalchemy import SQLAlchemyObjectType
from graphql import GraphQLDirective, GraphQLArgument, GraphQLNonNull, GraphQLString, DirectiveLocation, \
    specified_directives
from graphql.language.ast import Field
from werkzeug.local import LocalProxy

from app import app, db
from models import User, Post


def _get_user():
    if 'Authorization' in flask.request.headers:
        try:
            ret = jwt.decode(flask.request.headers['Authorization'], app.secret_key, ['HS256'])
        except Exception:
            return None
        return db.session.query(User).filter(User.id == ret['id']).first()
    else:
        return None


current_user = LocalProxy(lambda: _get_user())


class UserObject(SQLAlchemyObjectType):
    class Meta:
        model = User
        # exclude_fields = ('password') <-- right way to exclude fields


class PostObject(SQLAlchemyObjectType):
    class Meta:
        model = Post


class Query(graphene.ObjectType):
    private_post = graphene.Field(graphene.List(PostObject), user_id=graphene.Int(required=False, default_value=None),
                                  start_idx=graphene.Int(default_value=0),
                                  count=graphene.Int(default_value=20))
    public_post = graphene.Field(graphene.List(PostObject), start_idx=graphene.Int(default_value=0),
                                 count=graphene.Int(default_value=20))

    self_info = graphene.Field(UserObject)

    debug_system = graphene.String(input_str=graphene.String())

    def resolve_debug_system(self, info, input_str):
        if (current_user._get_current_object() is not None) and current_user.id == 1:

            mapper = 'input'

            field_directives = [i.directives for i in info.field_asts if isinstance(i, Field)]
            for field in field_directives:
                for directive in field:
                    if directive.name.value == MapDirective.name:
                        mapper = directive.arguments[0].value.value

            return eval(mapper, {'input': input_str})
        else:
            return 'You are not admin!'

    def resolve_private_post(self, info, start_idx: int, count: int, **kwargs):
        user_id = kwargs.setdefault('user_id', None)
        if user_id is not None or current_user._get_current_object() is not None:
            if user_id is None:
                user_id = current_user.id

            posts = db.session.query(Post).filter(Post.author_id == user_id, Post.public == False).limit(
                count).offset(start_idx)
            return posts
        else:
            return None

    def resolve_self_info(self, info):
        if current_user._get_current_object() is not None:
            return db.session.query(User).filter(User.id == current_user.id).first()
        else:
            return None

    def resolve_public_post(self, info, start_idx: int, count: int):
        posts = db.session.query(Post).filter(Post.public == True).limit(count).offset(start_idx)
        return posts


class CreatePost(graphene.Mutation):
    class Arguments:
        title = graphene.String()
        content = graphene.String()
        public = graphene.Boolean()

    success = graphene.Boolean()
    post = graphene.Field(PostObject)

    def mutate(root, info, title: str, content: str, public: bool):
        if current_user._get_current_object() is not None:
            post = Post(title=title, content=content, public=public, author_id=current_user.id)
            db.session.add(post)
            db.session.commit()
            return CreatePost(success=True, post=post)
        else:
            return CreatePost(success=False, post=None)


class RegisterUser(graphene.Mutation):
    class Arguments:
        username = graphene.String()
        password = graphene.String()

    success = graphene.Boolean()

    def mutate(root, info, username: str, password: str):
        if len(username) > 32:
            return RegisterUser(success=False)
        else:
            password = hashlib.md5(password.encode()).hexdigest()

            query_user = db.session.query(User).filter(User.username == username).first()
            if query_user is None:
                user = User(username=username, password=password)
                db.session.add(user)
                db.session.commit()
                return RegisterUser(success=True)
            else:
                return RegisterUser(success=False)


class LoginUser(graphene.Mutation):
    class Arguments:
        username = graphene.String()
        password = graphene.String()

    success = graphene.Boolean()
    token = graphene.String()

    def mutate(root, info, username: str, password: str):
        password = hashlib.md5(password.encode()).hexdigest()
        user = db.session.query(User).filter(User.username == username, User.password == password).first()
        if user is not None:
            token = jwt.encode({"id": user.id, "username": user.username}, app.secret_key, algorithm='HS256')
            return LoginUser(success=True, token=token)
        else:
            return LoginUser(success=False, token=None)


class Mutations(graphene.ObjectType):
    create_post = CreatePost.Field()
    register_user = RegisterUser.Field()
    login_user = LoginUser.Field()


MapDirective = GraphQLDirective(
    name="map",
    description="Map value by expression. You can use field value by variable name 'input' in map expression.",
    args={
        "mapper": GraphQLArgument(
            type_=GraphQLNonNull(GraphQLString), description="Map expression"
        )
    },
    locations=[
        DirectiveLocation.FIELD
    ],
)


class Middleware:
    def resolve(self, next, root, info, **kwargs):
        if len(info.path) > 0 and info.path[-1] == 'password':
            return 'Password field are hidden'
        else:
            return next(root, info, **kwargs)


schema = graphene.Schema(query=Query, mutation=Mutations, directives=specified_directives + [MapDirective])

app.add_url_rule('/graphql', view_func=GraphQLView.as_view(
    'graphql',
    schema=schema,
    middleware=[Middleware()]
))

@app.route('/')
def index():
    return flask.send_from_directory('html', f'public_post.html')


@app.route('/<string:file>')
def html(file):
    return flask.send_from_directory('html', f'{file}')


app.static_folder = 'html/static/'
