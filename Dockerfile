FROM openjdk:8-jre
RUN mkdir -p /opt/shinyproxy/
COPY target/shinyproxy-2.3.0-saagie.jar /opt/shinyproxy/shinyproxy.jar
COPY run-app.sh /opt/shinyproxy/
EXPOSE 8080
WORKDIR /opt/shinyproxy/
CMD ["sh", "/opt/shinyproxy/run-app.sh"]