# Base image file https://hub.docker.com/_/java?tab=description
FROM java:openjdk-8-alpine 

# Add jar files inside the container
ADD app /app/

RUN apk update
RUN apk add postgresql