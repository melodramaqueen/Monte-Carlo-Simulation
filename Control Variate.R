m<-c(2,3,4,5)
v<-c()
y<-c()
x<-c()
e<-c()
for (i in 1:4) {
	u<-runif(10**m[i],0,1)
	y<-sqrt(u)
	x<-exp(y)
	v[i]<-100*(cor(x,y)**2)
	e[i]<-mean(x)
}
print("percentage reduction in Variance")
print(v)
print("expected value - I")
print(e)

