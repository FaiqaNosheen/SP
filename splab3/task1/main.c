#include<stdio.h>
#include"MyMath.h"
int main()
{
int a,b;
printf("Enter First Number : ");
scanf("%d",&a);
printf("Enter Second Number : ");
scanf("%d",&b);

printf("\n\n After Swapping ");
swap(&a,&b);
printf("\n The First Number is : %d",a);
printf("\n The Second Number is : %d",b);
printf("\n\nComparing For Equality");

if (isEqual(a,b)==1)
{
	printf("\nThe two numbers %d and %d are Equal ",a,b);
}
else
{
	printf("\nThe two numbers %d and %d are Not Equal ",a,b);
}

}


