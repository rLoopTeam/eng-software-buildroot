#!/bin/ash

SERVER=8.8.8.8

ping -c2 ${SERVER} > /dev/null

if [ $? != 0 ]
then 
	ifdown wlan0
	killall -q wpa_supplicant
	ifup wlan0
fi

