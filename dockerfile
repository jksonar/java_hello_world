FROM maven:3.8.5-openjdk-17-slim as builder
COPY . /app
WORKDIR /app
RUN mvn clean package

FROM openjdk:17-jdk-slim
EXPOSE 8080
COPY --from=builder /app/target/java-helloworld-0.0.1-SNAPSHOT.jar /app/
WORKDIR /app
CMD ["java", "-jar", "java-helloworld-0.0.1-SNAPSHOT.jar"]