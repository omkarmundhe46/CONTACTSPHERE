# Use official OpenJDK runtime as base image
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the built JAR file from target directory
COPY target/scm2.0-*.jar app.jar

# Expose the application port (must match server.port in application.properties)
EXPOSE 8081

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
