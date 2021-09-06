#!/bin/bash

for folder in $(ls /etc)
do
	start_string=${folder:0:2}
	if [ $start_string == "rc" ] && [[ ${folder} = *[[:digit:]]* ]]
	then
		echo $folder
	fi
done