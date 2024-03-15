#!/bin/bash

url="https://github.com/traccar/traccar/releases/download/v5.12/traccar-linux-64-5.12.zip"

apt update && apt install wget unzip -y

wget -O traccar.zip "${url}"

unzip traccar.zip && chmod +x traccar.run
./traccar.run

cp /home/ubuntu/traccar.xml /opt/traccar/conf/traccar.xml

service traccar restart

echo "Traccar installation and configuration completed."