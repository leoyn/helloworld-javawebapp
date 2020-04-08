FROM maven:3.6.3-openjdk-15

COPY src /app/src
COPY pom.xml /app/pom.xml

WORKDIR /app

EXPOSE 80 8080

RUN mvn clean install
ENTRYPOINT [ "mvn", "tomcat7:run" ]