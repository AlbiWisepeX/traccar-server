FROM traccar/traccar:latest

COPY traccar.xml /opt/traccar/conf/traccar.xml

EXPOSE 8082

ENTRYPOINT ["/opt/traccar/jre/bin/java", "-jar", "/opt/traccar/tracker-server.jar", "/opt/traccar/conf/traccar.xml"]