FROM openjdk:8-jdk-alpine
COPY target/Sample-0.0.1-SNAPSHOT.jar Sample-0.0.1-SNAPSHOT.jar
#RUN mkdir myapps && mkdir -p /logs
#ADD newrelic/newrelic.jar /myapps/newrelic.jar
#ADD newrelic/newrelic.yml /myapps/newrelic.yml

#ADD target/*.jar /myapps/app.jar

#RUN addgroup -S infamgr && adduser -S infamgr -G infamgr
#RUN chown -R infamgr:infamgr /home/infamgr/
#RUN chown -R infamgr:infamgr /myapps/
#RUN chown -R infamgr:infamgr /logs/

#VOLUME /logs

#USER infamgr

EXPOSE 8080
#ENTRYPOINT ["java", "-javaagent:/myapps/newrelic.jar", "-jar", "/myapps/app.jar"]
ENTRYPOINT ["java", "-jar", "Sample-0.0.1-SNAPSHOT.jar"]

# To run your container locally execute this commands
# docker build -t emdm-pipeline-monitoring .
# docker run --name emdm-pipeline-monitoring-c -p 9800:9800 -v c:/docker/logs:/logs -d emdm-pipeline-monitoring
# docker logs -f emdm-pipeline-monitoring-c


