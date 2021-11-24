FROM java:8

ADD infosystem-0.0.1-SNAPSHOT.jar /infoSystem.jar

RUN bash -c "touch /infoSystem.jar"

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "/infoSystem.jar"]
