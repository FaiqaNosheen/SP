#!/bin/bash
array=`ls`
fname=( $array )
Extensions=()
declare -i E_index=0

Files=()
declare -i i=0
declare -i count=`echo ${#fname[@]}`
echo $count
while [ $i -lt  $count ]
do

	
	Ext=`echo ${fname[$i]}| cut -d'.' -f2`
	

		
	dir=`echo ${Extensions[@]}|grep "$Ext"`
	echo "${fname[$i]}"
	if [[ -z $dir ]]
	then

		newDir="${Ext^}"

		Extensions+=("$Ext")
		mkdir "$newDir"
		fil="${fname[$i]}"
		mv "$fil" ./"$newDir"
		
	
	else
		
		newDir="${Ext^}"		
		fil="${fname[$i]}"
		mv "$fil" ./"$newDir"
		
				

	fi
i=$i+1
done
echo ${Extensions[@]}
#0echo ${Extensions[@]}|grep "$
#echo ${#fname[@]}







#echo $array

#Extension=`echo ${names[0]}| cut -d'.' -f2`


#echo $Extension
#echo ${names[5]}
