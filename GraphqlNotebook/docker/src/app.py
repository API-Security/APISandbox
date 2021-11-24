from os import urandom

import flask
from flask_sqlalchemy import SQLAlchemy

app = flask.Flask(__name__)
app.secret_key = urandom(24)
app.config["SQLALCHEMY_DATABASE_URI"] = 'sqlite:///:memory:'
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

db = SQLAlchemy(app)

if __name__ == '__main__':
    from models import *
    from views import *

    db.create_all()

    if db.session.query(User).filter(User.id == 1).first() is None:
        u = User()
        u.id = 1
        u.username = 'admin'
        u.password = hashlib.md5(b'pizzicato5').hexdigest()

        p = Post()
        p.title = 'Admin\'s Test post'
        p.content = 'Wow.'
        p.public = False
        p.author_id = 1

        db.session.add(u)
        db.session.add(p)
        db.session.commit()

    app.run('0.0.0.0', port=5000)
