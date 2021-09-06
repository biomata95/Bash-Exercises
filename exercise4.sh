#!/bin/bash

for file in $(ls)
do
	extensao="${file##*.}"
	less="${extensao,,}"
	if [ $less == "png" ] || [ $less == "jpg" ] || [ $less == "jpeg" ]
	then
		echo $file
	fi
done