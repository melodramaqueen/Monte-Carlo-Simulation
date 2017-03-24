//Simulate 5000 sample of exponential with mean 5. Draw the histogram and the calcu-late the mean, maximum and minimum
#include <stdio.h>
#include <math.h>
void main()
{
	int i, q;
	float w, l;
	int a, b, m;
	float max, min, sum, mean;
	sum = 0;
	m=5000;
	a=1229;
	b=1;
	float x[5000];
	printf("The value of mean is 5 and 5000 Exponential random variables are to be generated.\n");
	printf("Give an initial value, from 0 to 4999, to start the process:\n");
	scanf("%d", &q);
	printf("The Exponential Random Variables are as folows: \n");
	for(i=0;i<5000;i++)
	{
		l=q;
		w=l/m;
		x[i]=(-5)*(log(1-w));
		q=((a*q)+b)%m;
		sum=sum+x[i];
		printf("%f\t", x[i]);
	}
	printf("%f", w);
	max=x[0];
	min=x[0];
	for(i=0;i<5000;i++)
	{
		if(x[i]>=max)
			max=x[i];
		if(x[i]<=min)
			min=x[i];
	}
	mean=sum/5000;
	printf("The Maximum vaue is %f. \nThe Minimum Value is %f. \nThe Mean Value is %f.\n", max, min, mean);
}
