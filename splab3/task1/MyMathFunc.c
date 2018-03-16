void swap(int *a,int *b)
{
*a=*a+*b;
*b=*a-*b;
*a=*a-*b;

//printf("a=%d",*a);
//printf("b=%d",*b);
}
int isEqual(int a,int b )
{
	if(a==b)
	{
		return 1;
	}
	else
	{
		return -1;
	}

}

