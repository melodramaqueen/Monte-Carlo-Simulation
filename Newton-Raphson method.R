#f1= the original function, it's evaluation

f1<- function(x) {
return(3*x^2-exp(x))
}

#f2= the derivative of the f1 function, it's evalkuation

f2<- function(x) {
return(6*x-exp(x))
}

#f3= the Newton Raphson method's calculation of x(n) with help of x(n-1) 

f3<- function(x,y,z) {
return(x-(y/z))
}

#f4= the final computation
f4<- function(x) {
new_x<-4
while (abs(x-new_x)>0.00001) {
y<-f1(x)
z<-f2(x)
new_x<-f3(x,y,z)
x<-new_x}
return (x)
}


#the graph of the expression
curve(3*(x^2)-exp(x),-2,4)

#guesses for possible zeroes' vicinity
x1<--0.5
x2<-1.5
x3<-3.5

print (f4(x1))
print (f4(x2))
print (f4(x3))




