#!/bin/bash

ls_lower() #----change string to lowercase
{
	var="IN FUNCTION"
	declare -l change=$var
	echo "Original String : "$var
	echo "Lower Case : " $change
}

is_root() #----if script is executed by root user
{
is_root=`whoami`
root="root"
if [ "$is_root" = "root" ]
then 
	return 0;
fi
}


is_user_exsist() #---if the user exsist or not
{
is_exsist=`cat /etc/passwd | grep $1`
if [ "$is_exsist" ]
then
	return 0
fi

}

#------main--------------------------------------------------------------------------------- 

ls_lower #---calling function

is_user_exsist "faiqa" #--calling function is_user_exsists 
if [ $? -eq 0 ]
then 
	echo "User exsists"
else
	echo "User does not exsists"
fi

is_root #--calling function is_root
if [ $? -eq 0 ]
then 
	echo "Script is executed by root"
else
	echo "Script is not executed by root"
fi
