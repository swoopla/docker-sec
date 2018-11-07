#!/bin/bash

CONF_FILE=${CONF_FILE:-/etc/sec.conf}
INPUT_FILE=${INPUT_FILE:-/var/log/syslog}

trap kill 1 INT QUIT TERM

sec --conf=${CONF_FILE} --input=${INPUT_FILE} --intevents --debug=3
