#Generate 10 random numbers from the same probability mass function by acceptance- rejection principle. Calculate mean and variance of the generated numbers.
y<-c()
i<-1
p<-c(0.05,0.25, 0.45, 0.15, 0.10)
g<-c(0.05,0.30,0.75,0.90,1)
while (i<11)
    {u1<-runif(1,0,1)
    x<-ceiling(5*u1)
    y[i]<-x
    i<-i+1}
#mean
print(mean(y))
#variance
print(var(y))
#simulated
print (y)
