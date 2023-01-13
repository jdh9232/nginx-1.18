#!/bin/bash

PROCESS=nginx

while [ : ]; do

pid_result=$(pidof $PROCESS)
if [[ "$pid_result" = "" ]]; then
    echo "$PROCESS is not running"
    break
fi

pkill -f "$PROCESS:"
echo "kill $PROCESS process"

done

