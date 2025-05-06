# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the packaged jar file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# Expose the application on port 8080
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java","-jar","/app/demo.jar"]
