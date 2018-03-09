#!/bin/bash

function showAllOwners()
{
	if [ $# -eq 0 ]
	then 
	echo "NO Argument"
	elif [ $# -gt 1 ]
	then 
	echo "Greater than 1 argument"
	elif [ $# -eq 1 ]
	then
	username=$1
	for i in `ls`
	do 
	set `ls -li $i`
	if [ $username=$4 ]
	then
	echo "Filename : $i | FileType `file` |  Owner: $username"
	fi

	done	
else
echo "Bye bye"
fi
}

showAllOwners $@
