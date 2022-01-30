#!/bin/bash

# version 2021-08-07 15:20

cd /home/pi/powercontainers;git pull;cd -

cp /home/pi/powercontainers/p1meter.sh /home/pi/p1meter.sh
chmod +x /home/pi/p1meter.sh

cp /home/pi/powercontainers/build.sh /home/pi/build.sh
chmod +x /home/pi/build.sh

git clone https://github.com/Revenberg/dockergrafana.git 2>/dev/null
git clone https://github.com/Revenberg/dockerp1mqtt.git 2>/dev/null
git clone https://github.com/Revenberg/dockersolarrs485mqtt.git 2>/dev/null
git clone https://github.com/Revenberg/dockeropenweathermapmqtt.git 2>/dev/null
git clone https://github.com/Revenberg/dockermqttexporter.git 2>/dev/null
git clone  https://github.com/Revenberg/dockerzigbeemqttexporter.git 2>/dev/null
git clone  https://github.com/Revenberg/dockerinfluxdb-export.git 2>/dev/null

#. /home/pi/dockersolarrs485logger/build.sh true
#. /home/pi/dockerwatermeter/build.sh true
#. /home/pi/dockeropenweathermap/build.sh true
#. /home/pi/dockerp1logger/build.sh true
. /home/pi/dockergrafana/build.sh true
#. /home/pi/dockermqtt2slack/build.sh true
. /home/pi/dockerp1mqtt/build.sh true
. /home/pi/dockersolarrs485mqtt/build.sh true
. /home/pi/dockeropenweathermapmqtt/build.sh true
. /home/pi/dockermqttexporter/build.sh true
. /home/pi/dockerzigbeemqttexporter/build.sh true
. /home/pi/dockerinfluxdb-export/build.sh true
cd /var/docker-compose

docker-compose up -d --force-recreate

cd -