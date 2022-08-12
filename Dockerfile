FROM adoptopenjdk/openjdk11:x86_64-ubuntu-jdk-11.0.16_8

EXPOSE 8080

COPY  /home/runner/work/test-git-actions/test-git-actions/target/*-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "*-1.0-SNAPSHOT.jar"]
