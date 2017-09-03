#!/bin/bash
 
function stopwatch() {
  local START=$(date +%s)
  if [ -z "$1" ]; then
    echo "Starting..."
  else
    echo $@
  fi

  while true; do
     NOW=$(date +%s)
     local DIFF=$(($NOW - $START))
     local MINS=$(($DIFF / 60 % 60))
     local SECS=$(($DIFF % 60))
     local HOURS=$(($DIFF / 3600 % 24))
     local DAYS=$(($DIFF / 86400))
     # \r  is a "carriage 
     printf "\r%3d Days, %02d:%02d:%02d" $DAYS $HOURS $MINS $SECS
 
     # here should be some more meaningful task or something.
     sleep 0.25
  done
}

stopwatch "Started the stopwatch. Click Ctrl-C to break."


