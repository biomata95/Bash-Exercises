#!/bin/bash

for file in $(ls -1 | rev | cut -f 2- -d "." | rev)
do
	if [ ${#file} -eq 4 ] 
	then
		echo $file
	fi
	#echo $file
done