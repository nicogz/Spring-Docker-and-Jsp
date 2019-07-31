FROM java:8

RUN mkdir /app

VOLUME /app/log

COPY build/libs/dockerAndJsp-0.0.1-SNAPSHOT.war /app/app.war

WORKDIR /app

ENTRYPOINT ["java", "-jar", "app.war"]