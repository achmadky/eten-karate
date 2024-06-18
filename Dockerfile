# Use a base image with Java 8 installed
FROM openjdk:8-jre-alpine

# Set working directory
WORKDIR /app

# Copy the project files into the Docker image
COPY . /app

# Command to run your Karate tests using the Karate standalone JAR
CMD ["java", "-jar", "karate-standalone.jar", "src/test/java/karate"]