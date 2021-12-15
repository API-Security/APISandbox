## OWASPAPITOP10

OWASP API Security Project: https://owasp.org/www-project-api-security/

### API泄漏

访问首页会跳转到swagger-ui界面，泄漏了所有API。

### API1: Broken object level authorization [✔︎] 

普通用户登录后，`/v2/user/getuserinfo/:id`API接口可以遍历用户信息。

### API2: Broken authentication [✔︎] 

SecretKey: 0waspApiTop10

没有使用随机值，泄漏后可本地伪造鉴权，导致任意用户登录 

gin的session在知道secret之后就可以任意伪造

这块可以和API7联动，API7泄露源码

### API3: Excessive data exposure [✔︎] 

普通用户登录后，`/v2/user/getuseremail`可以获取全部用户邮箱信息，web前端只取当前用户ID的邮箱，过多的数据暴露。

### API4: Lack of resources and rate limiting [✔︎] 

`/v2/login`可以爆破admin密码:123qweasd，API接口未限制请求速率。

### API5: Broken function level authorization [✔︎] 
 
`/v2/user/getuserprofile` 返回自己的全部信息。

用户未知的情况下，`/v2/user/getuserprofiles`返回全部用户信息。

### API6: Mass assignment [✔︎]

`/v2/register`

前端请求有隐藏的admin标签，可以手动加上，admin为true可以注册为管理员权限用户

username=123&password=123&admin=false

### API7: Security misconfiguration [✔︎] 

`/static`

设置静态目录的时候设置到了上一级，导致可以下源码或者下载二进制文件。

### API8: Injection  [✔︎] 

`/v2/login`存在sqlite注入，可以得到用户名密码

### API9: Improper assets management [✔︎] 

`/v2/getenv`   禁止访问

`/v1/getenv`   可以访问

由于开发历史遗留的API接口没有被取消，导致旧版本的API接口可以看到环境变量。

### API10: Insufficient logging and monitoring [✔︎] 

`/v1/evil`

没有日志，无法记录信息。默认情况下无日志
