FROM amazoncorretto:8-alpine-jdk as build-stage
WORKDIR /usr/src/app
COPY . .
RUN ./mvnw package

FROM amazoncorretto:8-alpine-jre
WORKDIR /usr/src/app
COPY --from=build-stage /usr/src/app/target/docker-example-1.1.3.jar ./docker-example-1.1.3.jar
RUN adduser --disabled-password --gecos "" appuser
USER appuser
EXPOSE 8080
CMD ["java", "-jar", "./docker-example-1.1.3.jar"]
