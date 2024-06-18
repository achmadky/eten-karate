# Use a base image with Java 8 installed
FROM openjdk:8-jre-alpine

# Set working directory
WORKDIR /app

# Copy the Karate standalone JAR file into the Docker image
COPY karate-standalone.jar /app/karate-standalone.jar

# Copy the Karate feature files into the Docker image (adjust path as needed)
COPY ./src/test/java/karate /app/src/test/java/karate

# Command to run your Karate tests using the Karate standalone JAR
CMD ["java", "-jar", "karate.jar", "src/test/java/karate"]