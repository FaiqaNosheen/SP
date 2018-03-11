#!/bin/bash

echo -en "ENTER FILE NAME : "
read fname

declare -i check=0
declare -i no_of_lines=0

if [ -e $fname ] #--------------------check if the file exsists
then 

	no_of_lines=(`wc -l $fname`)	#---count no of lines in file
	no_of_lines="$no_of_lines-1"

	while read line             #--------------reading file content
	do
		new=`echo $line`
		content+=( "$new" )
	done < $fname
	rm $fname
	for i in `seq 0 $no_of_lines` #-----nested loop to check duplicte lines
	do
		check=0
		ii=` expr $i + 1 `
		for j in `seq $ii $no_of_lines`
		do
		store1=${content[$i]}
		store2=${content[$j]}
		
			if [ "$store1" = "$store2" ]
			then
				check=1
				break
			fi
		done
		
		if [ $check -eq 0 ] #----if no duplication keep in file
		then
			echo ${content[$i]} 1>>$fname
		fi
	
	done  
	
else
	echo "File does not exsist"
fi
