FROM openjdk:17-jdk-slim
COPY target/*.jar springboot-docker-example.jar
ENTRYPOINT ["java", "-jar", "/springboot-docker-example.jar"]