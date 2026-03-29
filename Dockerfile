FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

COPY ./target/product-service-0.0.1-SNAPSHOT.jar .

CMD ["java","-jar","product-service-0.0.1-SNAPSHOT.jar"]