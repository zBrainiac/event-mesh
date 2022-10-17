#!/bin/sh
cd /opt/kafka
bin/zookeeper-server-start.sh config/zookeeper_3.properties &
 echo $! >zk.pid &
echo "zookeeper running"
bin/kafka-server-start.sh config/server_3.properties &
 echo $! >kafka.pid &

echo "kafka running"