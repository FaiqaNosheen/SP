int isPalindrome(char *arr,int size)
{
size=size-1;
int j=size-1;
for(int i=0;i<(size)/2;i++)
{
	if(arr[i]!=arr[j])
	{
		return -1;
	}
	j--;

}
return 1;
}


