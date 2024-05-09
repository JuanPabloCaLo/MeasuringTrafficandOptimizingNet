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

#######Configuracion de los enrutadores Mikrotik

#R1
ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.11 "/ip route add dst-address=33.$ISLA.2.0/24 gateway=172.16.$ISLA.5"

ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.11 "/ip route add dst-address=33.$ISLA.3.0/24 gateway=172.16.$ISLA.3"

#R2
ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.12 "/ip route add dst-address=33.$ISLA.1.0/24 gateway=172.16.$ISLA.4"

ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.12 "/ip route add dst-address=33.$ISLA.3.0/24 gateway=172.16.$ISLA.4"

#R3
ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.13 "/ip route add dst-address=33.$ISLA.1.0/24 gateway=172.16.$ISLA.1"

ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.13 "/ip route add dst-address=33.$ISLA.2.0/24 gateway=172.16.$ISLA.5"

#R4
ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.14 "/ip route add dst-address=33.$ISLA.1.0/24 gateway=172.17.$ISLA.5"

ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.14 "/ip route add dst-address=33.$ISLA.2.0/24 gateway=172.16.$ISLA.2"

ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.14 "/ip route add dst-address=33.$ISLA.3.0/24 gateway=172.17.$ISLA.5"

#R5
ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.15 "/ip route add dst-address=33.$ISLA.1.0/24 gateway=172.16.$ISLA.1"

ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.15 "/ip route add dst-address=33.$ISLA.2.0/24 gateway=172.17.$ISLA.4"

ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.15 "/ip route add dst-address=33.$ISLA.3.0/24 gateway=172.16.$ISLA.3"

#R6
ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.16 "/ip route add dst-address=33.$ISLA.1.0/24 gateway=172.17.$ISLA.5"

ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.16 "/ip route add dst-address=33.$ISLA.2.0/24 gateway=172.17.$ISLA.4"

ssh -o "StrictHostKeyChecking=no" admin@192.168.$ISLA.16 "/ip route add dst-address=33.$ISLA.3.0/24 gateway=172.17.$ISLA.5"
