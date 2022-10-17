#!/bin/sh
nohup java -classpath /opt/streamAnalytics/streamAnalytics-0.2.0.0.jar producer.Transactions ${DESTINATION} &
 echo $! >Transactions.pid &
nohup java -classpath /opt/streamAnalytics/streamAnalytics-0.2.0.0.jar producer.FSICreditCartTRX ${DESTINATION} &
 echo $! >FSICreditCartTRX.pid &
tail -f /dev/null