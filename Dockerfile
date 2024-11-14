# Use a base image with JDK
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container

# COPY target/myapp-0.0.1-SNAPSHOT.jar app.jar   
#For Maven

COPY . .  
#For Gradle


# Expose the port the app runs on
EXPOSE 8080

# Command to run the JAR file
CMD ["./gradlew", "bootrun"]