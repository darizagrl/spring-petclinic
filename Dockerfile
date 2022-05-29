FROM openjdk:11-jre
ADD /target/*.jar application.jar
ADD src/main/resources/application.properties application.properties
RUN adduser --disabled-password --gecos '' daria
USER daria
ENV JAVA_OPTS="-Xms50M -Xmx50M"
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar application.jar"]

