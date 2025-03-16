# Use an official OpenJDK 17 runtime as a parent image
FROM openjdk:17-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from your build to the container
COPY target/demo1-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the app will run on (optional, adjust based on your app)
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
