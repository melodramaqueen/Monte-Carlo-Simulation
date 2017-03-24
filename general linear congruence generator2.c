#include<stdio.h>
#include<string.h>
#include<stdlib.h>

void main() 
{	FILE * fp;
	fp=fopen("MonteCarloSim.ods","a");

// question 3
	int x,j,k,g;
	int a[2]={1597,5149};
	int r[20];
	int b[5];
	long int p;
	double m=244944;
	long int i,l;
	float u[244944];
	scanf("%ld", &p);
	for(i=0;i<5;i++)
	{
		b[i]=i;
	}
	l=m;
	for (x=0;x<=1;x++)
	{	for (k=0;k<5;k++)
		{
		//printf("The corresponding sequence of u[i]'s (with a=%d and b=%d) for the are as follows:\n",a[j], b[k]);
			u[0]=p/m;
			//printf("%f ", u[0]);
			for(i=1;i<244944;i++)
			{
				p=(a[j]*p+b[k])%l;
				u[i]=p/m;
				//printf("%f ", u[i]);
			}
			printf("\n");
			for(i=0;i<20;i++)
			{
				r[i]=0;
			}
			for(i=0;i<244944;i++)
			{
				for(g=0;g<20;g++)
				{
					if(0.05*g<=u[i] && u[i]<0.05*(g+1))	
					{r[g]++;
					break;
					}
				}
			}
			
			for(i=0;i<20;i++)
			{
			fprintf(fp,"%d\n",r[i]);
			}
			fprintf(fp,"\n\n\n");
		}
		
	}
	fclose(fp);	
}



