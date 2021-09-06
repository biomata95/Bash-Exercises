#!/bin/bash


folders=()
folderFinal=$1
folder1="folderTest1"
folder2="folderTest2"
folders+=($folder1)
folders+=($folder2)
$(mkdir $folder1 && touch $folder1/fileTest3.txt $folder1/fileTest4.txt)
$(mkdir $folder2 && touch $folder2/oi8.txt $folder2/oi5.txt)
$(mkdir $folderFinal)

for folderCurrent in "${folders[@]}"
do
	for files in $(ls -d -1 $folderCurrent/**)
	do
		$(cp -r $files $folderFinal)
	done
done

