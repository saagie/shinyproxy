FROM openjdk:8-jre

#AWS CLI needed when application.yml is stored on S3
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install

RUN mkdir -p /opt/shinyproxy/

COPY target/shinyproxy-2.3.0-saagie.jar /opt/shinyproxy/shinyproxy.jar
COPY run-app.sh /opt/shinyproxy/
COPY templates /opt/shinyproxy/templates

EXPOSE 8080
WORKDIR /opt/shinyproxy/
ENTRYPOINT ["sh", "/opt/shinyproxy/run-app.sh"]