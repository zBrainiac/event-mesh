#!/bin/sh
set -e

envsubst < /tmp/nohup_domain_4_TRX.sh > /opt/nohup_domain_4_TRX.sh

chmod +x /opt/nohup_domain_4_TRX.sh

echo "start zookepper & kafka"
./start_up_kafka_domain_4_TRX.sh &

echo "*** start kafka producer ***"
./nohup_domain_4_TRX.sh