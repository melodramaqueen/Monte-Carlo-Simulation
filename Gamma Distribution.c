//Generate 5000 sample from Gamma with parameter n= 5 and λ= 5.  Draw the histogram and the calculate the mean, maximum and minimum. 
#include <stdio.h>
#include <math.h>
void main()
{
	int i, q;
	float gamma[5000];
	float w, l;
	int a, b, m;
	float max, min, sum;
	sum = 0;
	m=5004;
	a=1229;
	b=1;
	float x[5004];
	printf("The value of mean is 5 and 5000 Gamma random variables are to be generated.\n");
	printf("Give an initial value, from 0 to 5003, to start the process:\n");
	scanf("%d", &q);
	printf("The Gamma Random Variables are as folows: \n");
	for(i=0;i<5004;i++)
	{
		l=q;
		w=l/m;
		x[i]=w;
		q=((a*q)+b)%m;
	}
	for(i=0;i<5000;i++)
	{
		gamma[i]=(-5)*log(x[i]*x[i+1]*x[i+2]*x[i+3]*x[i+4]);
		printf("%f\t", gamma[i]);
	}
}
