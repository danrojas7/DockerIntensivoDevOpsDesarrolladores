FROM openjdk:8-alpine

RUN apk update && apk add vim && apk add curl \
    && apk add maven

RUN mkdir -p /opt/dist/app
COPY . /opt/dist/app
WORKDIR /opt/dist/app
#RUN deb http://security.debian.org/ stretch/updates main contrib non-free
#RUN apt-get update && apt-get install vim && apt-get install maven

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "./WsRestClientAdmin-0.0.1-SNAPSHOT.jar"]