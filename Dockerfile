FROM openjdk:11
RUN touch /env.txt
RUN printenv > /env.txt
MAINTAINER aliyura
COPY target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]