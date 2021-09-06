#!/bin/bash

users=$(cat /etc/passwd)
echo " "
echo "The users that use Bash as shell:"
for i in $users
do
	shell_user=${i##*/}
	if [ $shell_user == "bash" ]
	then
		echo "$(cut -d':' -f5 <<<"$i")"
	fi
done
echo " "