FROM adoptopenjdk/openjdk11:ubi
COPY target/eureka-server.jar /eureka-server.jar
ENV JAVA_OPTS=""
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /eureka-server.jar" ]