set.seed(1)
p<-0.4
x<-c()
for (i in 1:50) {
	u<-runif(1,0,1)
	w1<-rweibull(1,2,1)
	w2<-rweibull(1,1.5,1)
	if(u<p)
	{
	x[i]<-w1	
	}
	else{
	x[i]<-w2
	}
}
png('Q3.png')
hist(x,freq=FALSE,col="#25B249",border="#000000")
dev.off()
