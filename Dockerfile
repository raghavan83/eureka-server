# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host machine to the container
COPY target/eureka-server-0.0.1-SNAPSHOT.jar /app/eureka-server.jar

# Expose the port the application will run on
EXPOSE 8761

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/eureka-server.jar"]
