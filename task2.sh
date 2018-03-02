#!/bin/bash

UNIX=( "Debia" 'Red hat' "Ubuntu" "Suse" "Fedora" )
echo "Array elements : "${UNIX[*]}
echo "Length of array : "${#UNIX[*]}
echo "Length of index 2 : "${#UNIX[2]}
echo "Extracted two elements : " ${UNIX[*]:2:2 } 
echo "Searching and replacing : " ${UNIX[@]/Ubuntu/"SCo unix"}

UNIX=( ${UNIX[@]} "AIX" "HP-UX" )
echo "After append, Array elements : "${UNIX[*]}

unset UNIX[3]
echo "After removing 3rd element, Array elements : "${UNIX[*]}

LINUX=( ${UNIX[@]} )
echo "LINUX array elements : "${LINUX[*]}

BASH=( ${LINUX[@]} ${UNIX[@]} )
echo "BASH array elements : "${BASH[*]}

unset UNIX[@]
unset LINUX[@]
