#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY . /home/app
#COPY /Users/milan/devops-task/test/pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/test-1.0-SNAPSHOT.jar /usr/local/lib/test.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/test.jar"]
