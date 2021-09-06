#!/bin/bash

for folder in $(ls /etc)
do
	end_string=${folder:(-2)}
	if [ ${#folder} -eq 5 ] && [[ "$end_string" == ".d" ]]
	then
		echo $folder
	fi
done