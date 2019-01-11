# Base image file https://hub.docker.com/_/java?tab=description
FROM java:openjdk-8-alpine 

# Add jar files inside the container
ADD $PWD/app/connectTest.jar /app/

# Commands to be executed at container startup
CMD [ "java", "-jar", "/app/connectTest.jar" ]