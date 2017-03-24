#include<iostream>
#include<cmath>
#include<fstream>
#include<string>
using namespace std;
int main()
{
	long long int a[3]={16807,40692,40014},m[3]={pow(2,31)-1,2147483399,2147483563},x;
	int n[3]={1000,10000,100000};
	int i,j,f[20],d,l=0,k;
	float u;
	char ch[9][6]={"1.ods","2.ods","3.ods","4.ods","5.ods","6.ods","7.ods","8.ods","9.ods"};
	cout<<"enter x"<<endl;
	cin>>x;
	for(k=0;k<3;k++)
	{
		for(i=0;i<3;i++)
		{
			for(j=0;j<20;j++)
			{
				f[j]=0;
			}
			for(j=0;j<n[i];j++)
			{
			x=((a[k]*x)%m[k]);
			u=(float(x)/float(m[k]));
			d=u/.05;
			f[d]=f[d]+1;
			}
			ofstream fp;
			fp.open(ch[l]);
			for(j=0;j<20;j++)
			{
			fp<<.025 + j*.05<<" " <<f[j]<<endl;
			}
			fp.close();
			l++;
		}
	}
}

