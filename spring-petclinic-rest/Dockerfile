FROM openjdk:16-alpine3.13
COPY .mvn/ .mvn
COPY mvnw pom.xml
RUN ./mvnw dependency:go-offline
COPY src ./src
CMD ["./mvnq", "spring-boot:run"]