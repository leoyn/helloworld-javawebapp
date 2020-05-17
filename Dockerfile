FROM debian:buster

COPY src /app/src
COPY pom.xml /app/pom.xml

WORKDIR /app

RUN apt update
RUN apt install default-jdk maven -y
RUN mvn clean install

EXPOSE 8080

ENTRYPOINT [ "mvn", "tomcat7:run" ]
