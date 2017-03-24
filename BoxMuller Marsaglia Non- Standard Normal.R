#Now use the above generated values to generated samples from N(μ= 0, σ2= 5) and N(μ= 5, σ2= 5). Hence plot the empirical(from sample with size 500) distribution function and theoretical distribution function in the same plot
print("Marsaglia Method")
#ptm <- proc.time()

z<-c()
j<-1
y<-c()
k<-1
while (j<=500) {
	u<-runif(2,0,1)
    v<-2*u-1
    k<-k+2
	if (v[1]**2+v[2]**2<1) {
		z1<-(sqrt(-log(v[1]**2+v[2]**2))*v[1])/sqrt(v[1]**2+v[2]**2)
		z2<-(sqrt(-log(v[1]**2+v[2]**2))*v[2])/sqrt(v[1]**2+v[2]**2)
		z[j]=z1*sqrt(5)
		z[j+1]=z2*sqrt(5)
		j<-j+2
		}
	}
	#print(k)
#	print(z)
#print("Proportion of values rejected")
#print((k-500)/k)

#print(proc.time()-ptm)
k<-sort(z)
png("MM1.png")
plot.ecdf(k)
par(new=TRUE)
plot(pnorm(k),col="red")
dev.off()
#ptm <- proc.time()

print("Box-Muller")
j<-1
y<-c()
while (j<=500) {
	u<-runif(2,0,1)
    v<-2*u-1
    r<--2*log(u[1])
    v<-2*pi*u[2]
	y[j]=sqrt(r)*cos(v)*sqrt(5)
	y[j+1]=sqrt(r)*sin(v)*sqrt(5)
	j<-j+2
	}
#print(proc.time()-ptm)
#print(y)
k<-sort(y)
png("BM1.png")
plot.ecdf(k)
par(new=TRUE)
plot(pnorm(k),col="red")
dev.off()
