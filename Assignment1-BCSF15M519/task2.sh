#!/bin/bash

fname=$1

no_of_lines=(`wc -l $fname`)						 #------counting no of lines
	
while read line								#-------reading file content
do
		new=`echo $line`
		content+=( "$new" )
done < $fname

declare -i count=1
declare -i content_lines=0
declare -i rem=0

while [ $count -le $no_of_lines ]			#------ loop to check either line number is even or odd
do 

	rem=" count % 2"
	if [ $rem -eq 0 ]
	then
		echo ${content[$content_lines]} 1>>evenfile
		count="$count + 1"
		content_lines="$content_lines + 1"
	else
		echo ${content[$content_lines]} 1>>oddfile
		count="$count + 1"
		content_lines="$content_lines + 1"
	fi
done
