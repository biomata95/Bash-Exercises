#!/bin/bash

for file in $(ls -1 | rev | cut -f 2- -d "." | rev)
do
	last_char=${file: -1}
	if [ $last_char != "a" ] 
	then
		echo $file
	fi
done