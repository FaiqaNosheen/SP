#include<stdlib.h>
#include<stdio.h>
#include<unistd.h>
#include<ctype.h>
#include<stdbool.h>

void main()
{

int arr2D[8][8];
int count_check=0;
int input;
bool to_check=false; 

for(int i=0 ;i<8;i++)
{	for(int j=0; j<8;j++)
	{
		arr2D[i][j]=i+j*3;
		printf("%d ",arr2D[i][j]);
	}
	printf("\n");		
}

int arr[2][2];
for(int i=0 ;i<2;i++)
{	for(int j=0; j<2;j++)
	{	
		printf("Enter value for index [%d][%d] : ",i ,j);
				
		if(scanf("%d",&input)== 0)
		{
			printf("Invalid input");
			to_check=true;
			break;
		
		}
		else
		{
		arr[i][j]=input;	
		}

	}	
	if(to_check==true)
		break;
}

if(to_check==false)
{
	for(int k=0 ;k<8 ;k++)
	{
		for(int l=0;l<8 ;l++)
		{
			if(arr[0][0]==arr2D[k][l])
			{
				if(arr[0][1]==arr2D[k][l+1])
				if(arr[1][0]==arr2D[k+1][l])
				if(arr[1][1]==arr2D[k+1][l+1])
				{	
					count_check++;
					printf("Given 2x2 matrxi found at (%d,%d) \n",k,l);
					break;
				}
			}
		
	
		}

	}
	
	if(count_check==0)
	printf("Given 2x2 matrix does not exist\n");
}
}
