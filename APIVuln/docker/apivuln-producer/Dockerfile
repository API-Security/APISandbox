FROM centos:7
RUN curl http://mirrors.aliyun.com/repo/Centos-7.repo -o /etc/yum.repos.d/CentOS-Base.repo && yum -y update && yum makecache && yum clean all
RUN yum -y install java-1.8.0-openjdk.x86_64 vim
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.292.b10-1.el7_9.x86_64/jre
COPY apivuln-producer-0.0.1-SNAPSHOT.jar /root/apivuln-producer-0.0.1-SNAPSHOT.jar
EXPOSE 58080
CMD ["sh","-c","sleep 10s && java -jar /root/apivuln-producer-0.0.1-SNAPSHOT.jar"]
