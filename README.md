### Info
This repo contains code sample related to this tutorial: https://rovingdev.com/p/guide-to-java-spring-boot-docker

### How to run?
```bash
mvn clean compile package

java -jar target/spring-demo-0.0.1-SNAPSHOT.jar --server.port:8010 #to test 

docker build --build-arg jar_file_name=target/spring-demo-0.0.1-SNAPSHOT.jar -t spring-docker-demo . # to create docker image

docker run -e "env_port=8087" -p 8008:8087 localhost/spring-docker-demo # to run a docker container with above image
```
