m<-c(2,3,4,5)
v<-c()
e<-c()
for (i in 1:4) {
	u<-runif(10**m[i],0,1)
	y1<-exp(sqrt(u))
	y2<-exp(sqrt(1-u))
	y<-(y1+y2)/2
	v[i]<--cor(y1,y2)/(1+cor(y1,y2))

	e[i]<-mean(y)
}
print("percentage reduction in Variance")
print(v)
print("expected value - I")
print(e)


