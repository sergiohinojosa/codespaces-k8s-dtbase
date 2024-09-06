FROM openjdk:17-jdk-slim-buster
WORKDIR /
RUN mkdir templates
COPY LogGenerator.jar .
COPY templates/* templates/

#COPY app/build/libs/app.jar build/

WORKDIR /
ENTRYPOINT ["java",  "-jar",  "LogGenerator.jar"]