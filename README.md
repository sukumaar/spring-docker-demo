### How to run?
```bash
mvn clean compile package

java -jar target/spring-demo-0.0.1-SNAPSHOT.jar --server.port:8010

docker build --build-arg jar_file_name=target/spring-demo-0.0.1-SNAPSHOT.jar -t spring-docker-demo .

docker run -e "env_port=8087" -p 8008:8087 localhost/spring-docker-demo
```
