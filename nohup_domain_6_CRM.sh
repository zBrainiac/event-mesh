#!/bin/sh
nohup java -classpath /opt/streamAnalytics/streamAnalytics-0.2.0.0.jar producer.Customer ${DESTINATION} &
 echo $! >Customer.pid &
tail -f /dev/null