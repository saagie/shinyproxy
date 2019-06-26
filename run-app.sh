#!/bin/bash

wget $SHINYPROXY_CONF_URL -O /opt/shinyproxy/application.yml

java -jar /opt/shinyproxy/shinyproxy.jar