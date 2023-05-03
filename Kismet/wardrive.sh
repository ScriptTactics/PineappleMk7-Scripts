```bash
#!/bin/bash

pkill gpsd # kill any current gpsd process
pkill kismet # kill any kismet process
ifconfig wlan1 down # bring down wlan1
ifconfig wlan2 down # bring down wlan2
#ifconfig wlan3 down # if you have the 5GHz module oncomment this line

gpsd udp://172.16.42.1:9999 # Set the GPSD input from the android phone

sleep 1 # wait for a lock
#gpspipe -w | grep -qm 1 '"mode":3'

UTCDATE=`gpspipe -w | grep -m 1 "TPV" | sed -r 's/.*"time":"([^"]*)".*/\1/' | sed -e 's/^\(.\{10\}\)T\(.\{8\}\).*/\1 \2/'`
# SET THE PINEAPPLE'S CLOCK
date -u -s "$UTCDATE"

# LAUNCH KISMET DAEMON
# If you have the 5Ghz module you will need to add wlan3 to the config
iwconfig wlan1 mode Monitor
iwconfig wlan2 mode Monitor 
kismet -p /root/kismetlogs -t wardirve --override wardrive -c wlan1 -c wlan2