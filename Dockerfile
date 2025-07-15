FROM openjdk:17-jdk-slim
EXPOSE 9090
COPY target/*.jar springboot-docker-example.jar
ENTRYPOINT ["java", "-jar", "/springboot-docker-example.jar"]