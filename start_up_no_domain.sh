#!/bin/sh
set -e

envsubst < /tmp/nohup_no_domain.sh > /opt/nohup_no_domain.sh

chmod +x /opt/nohup_no_domain.sh




echo "*** start kafka producer ***"
./nohup_no_domain.sh