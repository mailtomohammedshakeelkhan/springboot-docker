FROM openjdk:17-jdk-slim
COPY target/*.jar springboot-docker-example-3.3.12.jar
ENTRYPOINT ["java", "-jar", "/springboot-docker-example-3.3.12.jar"]