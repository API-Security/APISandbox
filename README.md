# APISandbox
Pre-Built Vulnerable Multiple API Scenarios Environments Based on Docker-Compose.

## 介绍
APISandbox是一个包含多个场景的API漏洞靶场。

目前有以下几个API漏洞场景靶场：

- [x] 4ASystem: 4A认证系统下的API平行越权
- [x] APIVuln: 生产消费流水线中的API缓存投毒
- [x] GraphqlNotebook: 一个使用GraphQL的留言板以及经典API漏洞
- [x] InfoSystem: WSDL泄露API越权进后台Getshell
- [x] OASystem: SpringBoot微服务架构下的API Gateway配置问题
- [x] OWASPApiTop10: 使用go作为后端实现解释OWASP API Top 10的漏洞


欢迎小伙伴提交更多API安全实战思路攻略等，社区会帮忙实现成靶场环境~

## 安装

在Ubuntu 20.04下安装docker/docker-compose:

```bash
# 安装pip
curl -s https://bootstrap.pypa.io/get-pip.py | python3

# 安装最新版docker
curl -s https://get.docker.com/ | sh

# 启动docker服务
systemctl start docker

# 安装compose
pip install docker-compose 
```

其他操作系统安装docker和docker-compose可能会有些许不同，请阅读Docker文档进行安装。

## 使用

```bash
# 下载项目
wget https://github.com/API-Security/APISandbox/archive/refs/heads/main.zip -O APISandbox-main.zip
unzip APISandbox-main.zip
cd APISandbox-main

# 进入某一个漏洞/环境的目录
cd OWASPApiTop10

# 自动化编译环境
docker-compose build

# 启动整个环境
docker-compose up -d
```

每个环境目录下都有相应的说明文件，请阅读该文件，进行漏洞/环境测试。

测试完成后，删除整个环境

```
docker-compose down -v
```



**本项目中所有环境仅用于测试，不可作为生产环境使用！**

## 注意事项


1. 为防止出现权限错误，最好使用root用户执行docker和docker-compose命令
2. docker部分镜像不支持在ARM等架构的机器上运行



# 项目地址

**Author: yulige,rmb122,wh1sper,Leonsec,h0ld1rs,Reclu3e**

https://github.com/API-Security/APISandbox
![](./imagesF/APISecurity.png)
**API Security是一个分享一切和API安全相关的工具、漏洞环境、书籍、技术文章、新闻资讯、最佳实践白皮书等资料的社区。**

**API Security知识星球永久免费，欢迎对API安全感兴趣的信息安全爱好者一起学习交流。**

**BUG、需求、PR都非常欢迎社区的小伙伴们提交。同时有疑问和意见也可以提出，我们虚心采纳。**
![](./images/zsxq.jpg)
有更多想法可以加微信yuligesec聊聊~
![](./images/wx.jpg)

