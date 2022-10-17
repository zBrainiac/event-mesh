#!/bin/sh
set -e

envsubst < /tmp/nohup_domain_3_IoT.sh > /opt/nohup_domain_3_IoT.sh

chmod +x /opt/nohup_domain_3_IoT.sh

echo "start zookepper & kafka"
./start_up_kafka_domain_3_IoT.sh &

echo "*** start kafka producer ***"
./nohup_domain_3_IoT.sh