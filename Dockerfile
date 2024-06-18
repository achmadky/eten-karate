# Use a base image with Java installed
FROM openjdk:11-jre-slim

# Set working directory
WORKDIR /app

# Copy the project files into the Docker image
COPY . /app

# Run the tests
CMD ["java", "-cp", "karate-standalone.jar", "com.intuit.karate.Main", "src/test/java/karate"]
