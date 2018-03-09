#!/bin/bash

#show table in different ranges

showTable(){
	num=$1
	for i in `seq 1 10`
	do
		echo " $num * $i = `expr $num \* $i` "
	done
}
showTable1(){
	num=$1
	var=$3
	for i in `seq $var 10`
	do
		echo " $num * $i = `expr $num \* $i` "
	done
}
showTable2(){
	num=$1
	var1=$3
	for i in `seq 1 $var1`
	do
		echo " $num * $i = `expr $num \* $i` "
	done
}
showTable3(){
	num=$1
	var6=$3
	var7=$5
	
	for i in `seq $var6 $var7`
	do
		echo " $num * $i = `expr $num \* $i` "
	done
}
showTable4(){
	num=$1
	var3=$5
	var4=$3
	for i in `seq $var3 $var4`
	do
		echo " $num * $i = `expr $num \* $i` "
	done
}

if [ $# -eq 0 ]
	then
	echo 'No arguments..'

elif [ $# -gt 6 ]
	then 
	echo 'Greater than 6 arguments..'

elif [ $# -eq 1 ]
	then
	showTable $1

elif [  $6 = -r ]
	then
	showTable4 $6 $5 $4 $3 $2 $1

elif [  $4 = -e -a $2 = -s ]
	then
	showTable3 $1 $2 $3 $4 $5

elif [  $2 = -s ]
	then
	showTable1 $1 $2 $3
	
elif [  $2 = -e ]
	then
	showTable2 $1 $2 $3

else 
 	echo "Invalid Arguments"
fi
