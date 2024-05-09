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

# ejecutar con sudo
echo "Acquire::http::proxy \"http://\";" > /etc/apt/apt.conf
if [ ! -f /etc/apt/sources.list.bak0 ]
then 
	sed -i.bak0 "s/archive\.ubuntu\.com/192\.168\.33\.21/g" /etc/apt/sources.list
	sed -i "s/ubuntu/ubuntu\/mirror\/archive\.ubuntu\.com\/ubuntu/g" /etc/apt/sources.list
	sed -i "s/deb http/deb [trusted=yes, arch=amd64] http/g" /etc/apt/sources.list
	apt update
	echo "192.168.33.21 eihal.ugr.es eihal eihal.labredes.pri" >> /etc/hosts
fi


#Instala traceroute

apt-get -y --allow-unauthenticated install traceroute

sudo route del default
sudo route add default gw 33.$ISLA.$LAN.254
echo $LAN
