FROM eclipse-temurin:17-jdk
EXPOSE 9090
COPY target/*.jar springboot-docker-example.jar
ENTRYPOINT ["java", "-jar", "/springboot-docker-example.jar"]