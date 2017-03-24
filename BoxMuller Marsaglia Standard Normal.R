#Use the Box-Muller method and Marsaglia-Bray method to do the following :(a) Generate a sample of 100, 500 and 10000 values from N(0,1).  Hence find the sample mean and variance.(b) Draw histogram in all cases.
print("Box-Muller")
z<-c()
j<-1
y<-c()
while (j<=100) {
	u<-runif(2,0,1)
    v<-2*u-1
    
	if (v[1]**2+v[2]**2<1) {
		z1<-(sqrt(-log(v[1]**2+v[2]**2))*v[1])/sqrt(v[1]**2+v[2]**2)
		z2<-(sqrt(-log(v[1]**2+v[2]**2))*v[2])/sqrt(v[1]**2+v[2]**2)
		z[j]=z1
		z[j+1]=z2
		j<-j+2
		}
	}
	print(z)
	hist(z,breaks=100)
	print("mean")
	print(mean(z))
	print("Variance")
	print(var(z))
print("Marsaglia Method")
j<-1
y<-c()
while (j<=100) {
	u<-runif(2,0,1)
    v<-2*u-1
    r<--2*log(u[1])
    v<-2*pi*u[2]
	y[j]=sqrt(r)*cos(v)
	y[j+1]=sqrt(r)*sin(v)
	j<-j+2
	}

print(y)
print("mean")
print(mean(y))
print("Variance")
print(var(y))
hist(y,breaks=100)

