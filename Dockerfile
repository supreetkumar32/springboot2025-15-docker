FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

# COPY ./target/product-service-0.0.1-SNAPSHOT.jar .
#
# CMD ["java","-jar","product-service-0.0.1-SNAPSHOT.jar"]

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]