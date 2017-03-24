#enerate 1000 standard normal variates using standard Double-exponential distri-bution by acceptance-rejection method.
fg<- function(x) {
return (((2/pi)**0.5)*(exp((-x**2)/2+abs(x))))
}
value_u<-function(u) {
if (u<0.5)
    {return (log(2*u))}
else
    {return (-log(2-2*u))}
}
k<-sqrt(2*exp(1)/pi)
print(k)
y<-c()
i<-1
j<-0
while (i<1001)
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
#theoritical
print(1/k)
#simulated
print(i/j)
print (y)
