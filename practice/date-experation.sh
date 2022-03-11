#!/bin/bash

# expirate date with posix time
cur_timestamp=$(date +%s)
# human readable date 
cur_hdate=2022$(date +%m%d --date @$cur_timestamp)
file=jobStatus_$cur_hdate
timestamp=$cur_timestamp

for i in {1..5}; do
  timestamp=$(expr $timestamp - 86400)
  hdate=2022$(date +%m%d --date @$timestamp)
done

