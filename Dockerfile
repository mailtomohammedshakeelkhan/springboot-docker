FROM openjdk:17-jdk-slim
ADD target/springboot-docker-example-0.0.1-SNAPSHOT.jar springboot-docker-example-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/springboot-docker-example-0.0.1-SNAPSHOT.jar"]