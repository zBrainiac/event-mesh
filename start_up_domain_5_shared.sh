#!/bin/sh
set -e

envsubst < /tmp/nohup_domain_5_shared.sh > /opt/nohup_domain_5_shared.sh

chmod +x /opt/nohup_domain_5_shared.sh

echo "start zookepper & kafka"
./start_up_kafka_domain_5_shared.sh &

echo "*** start kafka producer ***"
./nohup_domain_5_shared.sh