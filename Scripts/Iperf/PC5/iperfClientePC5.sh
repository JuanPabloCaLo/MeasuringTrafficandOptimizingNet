#!/bin/sh

PC=$1
ISLA=$2

if [ $PC -lt 3 ]
  then
     LAN=1
elif [ $PC -lt 5 ]
  then
     LAN=2
else
     LAN=3
fi


iperf -t 3600 -c 33.$ISLA.1.1 -p 500$1 &
iperf -t 3600 -c 33.$ISLA.1.2 -p 500$1 &
iperf -t 3600 -c 33.$ISLA.2.3 -p 500$1 &
iperf -t 3600 -c 33.$ISLA.2.4 -p 500$1 &
iperf -t 3600 -c 33.$ISLA.3.6 -p 500$1 &
