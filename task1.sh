#!/bin/bash
limit=2
if [ $# -eq $limit ] 
then

	echo "Addition : "`expr $1 + $2`  
	echo "Subtraction : " `expr $1 - $2`
	echo "Multiplication : " `expr $1 \* $2`
	if [ $2 -ne 0 ]
	then 
		echo "Mod : " `expr $1 % $2`		
		echo "Division : "`expr $1 / $2`
	else
		echo "Math error. Mod and division could not be find"
	fi

else
	read -p "Enter first number : " num1
	read -p "Enter second number : " num2
	echo "Addition : "`expr $num1 + $num2`  
	echo "Subtraction : " `expr $num1 - $num2`
	echo "Multiplication : " `expr $num1 \* $num2`
	if [ $num2 -ne 0 ]
	then 
		echo "Mod : " `expr $num1 % $num2`		
		echo "Division : "`expr $num1 / $num2`
	else
		echo "Math error. Mod and division could not be find"
	fi

fi
