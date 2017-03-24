#include<iostream>
#include<cmath>
#include<fstream>
using namespace std;
int main()
{
	long long int m=pow(2,31), a=16807,x[100000];
	int i,j,d,n[3]={1000,10000,100000};
	float u[100000],sum=0,mean,variance,lag,f[20];
	cout<<"enter x"<<endl;
	cin>>x[0];
	u[0]=float(x[0])/float(m);
	for(i=0;i<20;i++)
	{
		f[i]=0;
	}
	for(i=1;i<=16;i++)
	{
	x[i]=(a*x[i-1])%m;
	u[i]=float(x[i])/float(m);
	d=u[i]/.05;
	f[d]=f[d]+1;
	}
	for(i=17;i<100000;i++)
	{
	x[i]=(x[i-17]+x[i-5])%m;
	u[i]=float(x[i])/float(m);
	if(i<1000)
		{
			d=u[i]/.05;
			f[d]=f[d]+1;
		}
	}
	ofstream fp;
	fp.open("data1.ods");
	for(i=0;i<998;i++)
	{
		fp<<u[i]<<" "<<u[i+1]<<endl;
	}
	fp.close();
	fp.open("data2.ods");
	for(i=0;i<9998;i++)
	{
		fp<<u[i]<<" "<<u[i+1]<<endl;
	}
	fp.close();
	fp.open("data3.ods");
	for(i=0;i<99998;i++)
	{
		fp<<u[i]<<" "<<u[i+1]<<endl;
	}
	fp.close();
	for(j=0;j<3;j++)
	{
	cout<<"for "<<n[j]<<" values: "<<endl;
	for(i=0;i<n[j];i++)
	{
		sum=sum+u[i];
	}
	mean=sum/n[j];
	cout<<"the mean is "<<mean<<endl;
	sum=0;
	for(i=0;i<n[j];i++)
	{
		sum=sum+((u[i]-mean)*(u[i]-mean));
	}
	variance=sum/n[j];
	cout<<"the variance is "<<variance<<endl;
	}
	for(i=1;i<=5;i++)
	{
		sum=0;
		for(j=i;j<=999;j++)	
		{
			sum=sum+((u[j]-mean)*(u[j-i]-mean));
		}
	lag=sum/(variance*1000);
	cout<<"the autocorrelation function for lag="<<i<<" is "<<lag<<endl;
	}
	fp.open("data4.ods");
	for(i=0;i<20;i++)
	{
		fp<<.025 + i*.05<<" " <<f[i]/1000<<endl;
	}
	fp.close();
}
