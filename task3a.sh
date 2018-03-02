#!/bin/bash
if [ $# -eq 5 ]
then
	if [ $1 = "-c" ]
	then	
	arr1=( `ls -l $2` )
	arr2=( `ls -l $4` )
	
	echo "FILE 1"
	echo "Owner : " ${arr1[2]}
	echo "Group : " ${arr1[3]}
	echo "Permission : " ${arr1[0]}

		if [ ${arr1[2]} =  ${arr2[2]} ]
		then
		echo "Cheating : 1"
		else
			difference=`diff $1 $3`
			if [ $difference -eq 0 ]
			then
			echo "Cheating : 0"
			else
			echo "Cheating : 1"
			fi		
		fi

	echo "FILE 2"
	echo "Owner : " ${arr2[2]}
	echo "Group : " ${arr2[3]}
	echo "Permission : " ${arr2[0]}
		if [ ${arr1[2]} =  ${arr2[2]} ]
		then
		echo "Cheating : 1"
		else
			difference=`diff $1 $3`
			if [ $difference -eq 0 ]
			then
			echo "Cheating : 0"
			else
			echo "Cheating : 1"
			fi	
		fi
	else
	echo "Wrong Arrguments"
	fi
else
echo "wrong arrguments"
fi
