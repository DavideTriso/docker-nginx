#!/bin/bash
###########

while :; do
 inotifywait --exclude .swp -e create -e modify -e delete $INOTIFYWAIT_WATCH_DIRS
 nginx -t
 if [ $? -eq 0 ]
 then
  nginx -s reload
 fi
done & 