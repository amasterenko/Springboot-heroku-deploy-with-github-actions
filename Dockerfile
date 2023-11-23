FROM adoptopenjdk/openjdk11:latest

WORKDIR app
ADD target/test-app.jar app.jar
#CMD java -Dserver.port=$PORT $JAVA_OPTS -jar app.jar
#ENTRYPOINT ["sh", "-c", "java -XX:+UseContainerSupport -Xmx256m -Xss512k -XX:MetaspaceSize=100m -Dserver.port=$PORT ${JAVA_OPTS} -cp DemoApplication -jar app.jar"]
CMD java -Dserver.port=$PORT $JAVA_OPTS -jar app.jar