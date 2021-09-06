#!/bin/bash

for file in $(ls)
do
	if [[ ${file:0:1} = *[[:digit:]]* ]]	
	then
		echo $file
	fi
done