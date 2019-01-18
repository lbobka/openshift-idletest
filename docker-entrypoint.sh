#!/bin/bash
set -e

PARA=$1

if ! [ -z "$APP_PARAMS" ]; then
        PARA=$APP_PARAMS
        echo $PARA
fi


num=0

if ! [ $1 -eq 0 ]; then
        num=1
fi

seconds_running=5

while [ $num -le $PARA ]
do
        if ! [ $PARA -eq 0 ]; then
                let num++
        fi
        sleep 5
        echo "idletest is running since:" $seconds_running "seconds"
        seconds_running=$[$seconds_running+5]
done
