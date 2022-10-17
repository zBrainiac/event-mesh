#!/bin/sh
set -e

envsubst < /tmp/nohup_domain_6_CRM.sh > /opt/nohup_domain_6_CRM.sh

chmod +x /opt/nohup_domain_6_CRM.sh

echo "start zookepper & kafka"
./start_up_kafka_domain_6_CRM.sh &

echo "*** start kafka producer ***"
./nohup_domain_6_CRM.sh