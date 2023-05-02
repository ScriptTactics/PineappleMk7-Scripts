#!/bin/bash

pkill gpsd
pkill kismet
ifconfig wlan1 down
ifconfig wlan2 down
#ifconfig wlan3 down

gpsd udp://172.16.42.1:9999

sleep 1
#gpspipe -w | grep -qm 1 '"mode":3'

UTCDATE=`gpspipe -w | grep -m 1 "TPV" | sed -r 's/.*"time":"([^"]*)".*/\1/' | sed -e 's/^\(.\{10\}\)T\(.\{8\}\).*/\1 \2/'`
# SET THE PINEAPPLE'S CLOCK
date -u -s "$UTCDATE"

# LAUNCH KISMET DAEMON
iwconfig wlan1 mode Monitor
iwconfig wlan2 mode Monitor
kismet -p /root/kismetlogs -t wardirve --override wardrive -c wlan1 -c wlan2
