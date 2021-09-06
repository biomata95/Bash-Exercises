#!/bin/bash

for folder in $(ls /etc)
do
	start_string=${folder:0:2}
	end_string=${#folder}-2:${#folder}-1}
	if [ $start_string == "rc" ] && [ end_string == ".d" ]
	then
		echo $folder
	fi
done