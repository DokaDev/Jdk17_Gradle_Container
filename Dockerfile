FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY . /app

RUN chmod +x ./gradlew
RUN ./gradlew build

CMD ["java", "-jar", "Jdk17_Gradle_Container-1.0-SNAPSHOT.jar"]