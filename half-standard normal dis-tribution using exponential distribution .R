#generating random numbers from half-standard normal dis-tribution using exponential distribution with mean 1 by acceptance-rejection method
fg<- function(x) {
return (((2/pi)**0.5)*(exp((-x**2)/2+x)))
}
value_u<-function(u) {
return (-log(1-u))
}

k<-sqrt(2*exp(1)/pi)
print(k)

y<-c()
i<-1
j<-0
while (i<=1000)
    {
    u1<-runif(1,0,1)
    u2<-runif(1,0,1)
    x<-value_u(u1)
    if (u2<(fg(x))/k)
        {
        y[i]<-x
        i<-i+1
        }
    j<-j+1
}

#theoretical
print(1/k)
#simulated
print(i/j)
print (y)
