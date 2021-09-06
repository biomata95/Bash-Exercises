#!/bin/bash

users=$(cat /etc/passwd)
echo " "
cont=0
for i in $users
do
	folder_home="$(cut -d':' -f6 <<<"$i")"
	folder_home_converted="$(cut -d'/' -f2 <<<"$folder_home")"
	if [ $folder_home_converted == "home" ]
	then
		echo $folder_home_converted "<- ON HERE"
		cont=$((cont+1))
	fi
done
echo "Number of users that use /home is:" $cont
echo " "
