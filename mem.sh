#!/bin/bash
#Script to collect memory details is percentages
TOTAL=` free -m |awk '/Mem/ {print $2}'`
USED=` free -m |awk '/Mem/ {print $3}'`
FREE=` free -m |awk '/Mem/ {print $4}'`

echo "Total Memory = $TOTAL"
echo "Used Memory = $(($USED*100/$TOTAL)) % "
echo "Free Memory = $(($FREE*100/$TOTAL)) %"

