#Java実行環境
FROM eclipse-temurin:21-jre

#JAVA_HOMEの設定
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
WORKDIR /app

EXPOSE 8080

#手動実行時にはtail-fを実行することでコンテナ起動しっぱなしにする。
#CMD ["tail", "-f", "/dev/null"]
CMD ["java", "-jar", "-Dspring.profiles.active=prod", "/app/target/app.jar"]