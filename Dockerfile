FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY . /app

RUN chmod +x ./gradlew
RUN ./gradlew build

CMD ["java", "-jar", "build/libs/gradle-0.0.1-SNAPSHOT.jar"]