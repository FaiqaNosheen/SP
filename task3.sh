#!/bin/bash

if [ $# -eq 2 ]
then
	arr=( `ls -l $1` )
	
	echo "Owner : " ${arr[2]}
	echo "Group : " ${arr[3]}
	echo "Permission : " ${arr[0]}
	echo "File name : " $1 
	if [ ${arr[2]} = $2 ]
	then
		echo "Cheating : 0"
	else
		echo "Cheating : 1"
	fi

fi
