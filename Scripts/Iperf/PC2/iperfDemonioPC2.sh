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


#Instalacion de iperf
apt-get -y --allow-unauthenticated install iperf
#apt-get -y --allow-unauthenticated install sshpass

#Iperf modo demonio

	sudo iperf -s -D -p5001
	sudo iperf -s -D -p5003
	sudo iperf -s -D -p5004
	sudo iperf -s -D -p5005
	sudo iperf -s -D -p5006
