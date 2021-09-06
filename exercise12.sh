#!/bin/bash


folders=()
folderFinal=$1
folder1="folderTeste1"
folder2="folderTeste2"
folders+=($folder1)
folders+=($folder2)

for folderCurrent in "${folders[@]}"
do
	for files in $(ls $folderCurrent)
	do
		nome="${files%.*}"
		echo $nome
		if [ $nome == "hello" ]
		then
			echo "In folder " $folderCurrent " have the word " $files
		fi
	done
done

