function setToken(token) {
    window.localStorage.setItem('token', token)
}

function getToken() {
    return window.localStorage.getItem('token')
}

async function graphqlQuery(query, variables = {}, token = false) {
    let headers = {
        'Content-Type': 'application/json',
    }
    if (token) {
        headers['Authorization'] = getToken()
    }
    let res = await (await fetch("/graphql", {
        method: "POST",
        headers: headers,
        body: JSON.stringify({
            'query': query,
            'variables': variables,
        }),
    })).json()
    return res.data;
}

async function isLogin() {
    if (getToken() === null) {
        return false
    }

    let res = await graphqlQuery(
`query selfInfo { 
            selfInfo {
                id
                username
                posts {
                    id
                    title
                    content
                    public
                    authorId
                }
            }
        }`,
        {},
        true
    )
    return res.selfInfo !== null
}