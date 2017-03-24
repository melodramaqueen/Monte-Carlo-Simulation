#include<stdio.h>
#include<string.h>

void main() 
{
	FILE * fp;
	fp=fopen("MonteCarlo_Ques2_Lab2.ods","a");
// question 3
	int b=1,x,r,i,j,a=1229;
	float m=2048;
	int y[2048];
	float u[2048];

	//for (x=0;x<=2047;x++)
	{	y[0]=0;
		u[0]=y[0]/2048;
		for (i=1;i<2048;i++)
		{	r=m;
			y[i]=(a*y[i-1]+b)%r;
			u[i]=y[i]/m;
		}
		for (i=1;i<2048;i++)
		{
		fprintf(fp,"%f\n",u[i]);
		}
		fprintf(fp,"\n");
		
	}
	
}
