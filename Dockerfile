# Container image that runs code
FROM openjdk:11
WORKDIR /home/java
ARG JAR_FILE=target/*.jar
# Copies code file from action repository to the filesystem path `/` of the container
COPY target/*.jar app.jar
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["java","-jar","./app.jar"]
EXPOSE 8080
