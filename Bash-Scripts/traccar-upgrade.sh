#!/bin/bash

url="https://github.com/traccar/traccar/releases/download/v5.11/traccar-linux-64-5.11.zip"

wget -O traccar.zip "${url}"
unzip traccar.zip && chmod +x traccar.run

service traccar stop

mv /opt/traccar /opt/traccar-old_$(date +"%Y-%m-%d")
./traccar.run
cp /home/ubuntu/traccar.xml /opt/traccar/conf/traccar.xml

service traccar start