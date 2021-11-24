FROM centos:7
RUN curl http://mirrors.aliyun.com/repo/Centos-7.repo -o /etc/yum.repos.d/CentOS-Base.repo && yum -y update && yum makecache && yum clean all
RUN yum -y install java-1.8.0-openjdk.x86_64 vim unzip
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.292.b10-1.el7_9.x86_64/jre
COPY rocketmq-all-4.9.0-bin-release.zip /root/rocketmq-all-4.9.0-bin-release.zip
COPY start.sh /start.sh
RUN unzip /root/rocketmq-all-4.9.0-bin-release.zip -d /root && chmod 777 /start.sh
CMD ["/start.sh"]


