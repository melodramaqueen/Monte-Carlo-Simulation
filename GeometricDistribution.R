set.seed(22323)
n<-50
while (1)
{
	p<-runif(1,0,1)
	q<-1-p

	if (p!=0 || p!=1) {
	break;
	}
}
g<-c()
for (i in 1:n) {
u<-runif(1,0,1)
g[i]<-floor(log(u)/log(q))+1
}


print(g)

png('Q1.png')
hist(g,freq=FALSE,col="#25B249",border="#000000")
dev.off()
