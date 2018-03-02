

arr=(`cat "file"`)
echo "Array content : " ${arr[*]}
echo "Array length : " ${#arr[*]}
echo "Array 3rd element : " ${arr[3]}
echo "Size of array 3rd element : " ${#arr[3]}
