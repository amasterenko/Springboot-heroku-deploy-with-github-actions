FROM openjdk:17.0.1-slim

WORKDIR app
ADD target/test-app.jar app.jar
#CMD java -Dserver.port=$PORT $JAVA_OPTS -jar app.jar
ENTRYPOINT ["sh", "-c", "java -Dserver.port=$PORT ${JAVA_OPTS} -jar app.jar"]