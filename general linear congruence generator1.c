#include<stdio.h>
#include<string.h>

void main() 
{

// question 1
	int b=0,m=11,x,i,j,a;
	int y[11];
for (j=1;j<=2;j++)
	{
	a=3*j;	
	printf("The sequence generated with a=%d\n",a);
	for (x=0;x<=10;x++)
	{	y[0]=x;
		printf("%d ",y[0]);
		for (i=1;i<=10;i++)
		{	
			y[i]=(a*y[i-1])%m;
			printf("%d ",y[i]);
			
		}
		printf("\n");
	}
	}
}
