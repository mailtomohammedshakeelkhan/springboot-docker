FROM openjdk:17-jdk-slim
ADD target/springboot-docker-example.jar springboot-docker-example.jar
ENTRYPOINT ["java", "-jar", "/springboot-docker-example.jar"]