FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY target/*.war app.war

EXPOSE 8081

CMD ["java", "-jar", "app.war"]
