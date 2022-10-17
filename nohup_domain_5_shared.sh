#!/bin/sh
nohup java -classpath /opt/streamAnalytics/streamAnalytics-0.2.0.0.jar producer.RefDataGeoLocation ${DESTINATION} &
 echo $! >RefDataGeoLocation.pid &
nohup java -classpath /opt/streamAnalytics/streamAnalytics-0.2.0.0.jar producer.LookupWeatherCondition ${DESTINATION} &
 echo $! >LookupWeatherCondition.pid &
nohup java -classpath /opt/streamAnalytics/streamAnalytics-0.2.0.0.jar producer.CurrencyCode ${DESTINATION} &
 echo $! >CurrencyCode.pid &
nohup java -classpath /opt/streamAnalytics/streamAnalytics-0.2.0.0.jar producer.CurrencyCodeISO ${DESTINATION} &
 echo $! >CurrencyCodeISO.pid &
nohup java -classpath /opt/streamAnalytics/streamAnalytics-0.2.0.0.jar producer.FSIFXRates ${DESTINATION} &
 echo $! >FSIFXRates.pid &
tail -f /dev/null