#Java実行環境
FROM eclipse-temurin:21-jre

#JAVA_HOMEの設定
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
WORKDIR /app

COPY target/*.jar /app/app.jar

EXPOSE 8080

CMD ["java", "-jar", "/app/app.jar"]