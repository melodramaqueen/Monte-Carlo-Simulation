m<-c(2,3,4,5)
v1<-c()
v2<-c()
e<-c()
for (i in 1:4) {
	u<-runif(10**m[i],0,1)
	y<-exp(sqrt(u))
	theta<-sum(y)/(10**m[i])
	v1[i]<-(theta-qnorm(0.025)*sd(y)/sqrt(10**m[i]))
	v2[i]<-(theta+qnorm(0.025)*sd(y)/sqrt(10**m[i]))
	e[i]<-mean(y)
	cat("interval", i, v2[i], v1[i])
	cat("\n")
	cat("mean ")
	cat(e[i])
	cat("\n")
}

