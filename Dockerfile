FROM docker.io/maven:3.9-eclipse-temurin-17 as base

LABEL org.opencontainers.image.authors="https://github.com/sukumaar"

ARG jar_file_name=*.jar

ARG arg_port=8080

ENV env_port=$arg_port

ENV HOME /

COPY ${jar_file_name} /runnable-jar.jar

ENTRYPOINT ["java","-jar","/runnable-jar.jar","--server.port=${env_port}"]
