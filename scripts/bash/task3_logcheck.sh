#!/bin/bash

# Task 3: Count 'Error' lines in server.log

LOGFILE="server.log"

if [ ! -f "$LOGFILE" ]; then
  echo "Log file not found!"
  exit 1
fi

COUNT=$(grep -c "Error" "$LOGFILE")
echo "Lines containing 'Error': $COUNT"
