#!/bin/sh
nohup java -classpath /opt/streamAnalytics/streamAnalytics-0.2.0.0.jar producer.IoTSensorSimulatorAnomaly ${DESTINATION} &
 echo $! >IoTSensorSimulatorAnomaly.pid &
tail -f /dev/null