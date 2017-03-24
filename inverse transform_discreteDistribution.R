#Generate 10 random numbers from the above probability mass function using usual procedure (inverse transform) of generating random number from discrete distribution defined on finite number of points.  Calculate mean and variance of the generated numbers
inv<-function(u,g)
{
    k<-1
    for (i in 1:5)
    {    #print(u)
        #print(g[i])
        if (u>=g[i])
            {k<-i}
    }
    return (k)
}
y<-c()
i<-1
p<-c(0.05,0.25,0.45,0.15,0.10)
g<-c(0.05,0.30,0.75,0.90,1)
while (i<11)
    {
    u1<-runif(1,0,1)
    print(u1)
    x<-inv(u1,g)
    #print(g)
    y[i]<-x  
    i<-i+1    
}
#mean
print(mean(y))
#variance
print(var(y))
#simulated
print (y)
