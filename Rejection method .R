#Use the rejection method to generate from f(x) = 20 (1−x)^3,0< x <1
my_func<-function(x) 
{
  value<-(1-x)^3;
  value<-20*value;
  value<-x*value;
  return (value);
}



gen_reject<-function(my_func,n) 
{
  set.seed(5);
  W <- vector(length = n);
  u1<-runif(1);	
  value <- my_func(u1);
  c<-2.5;
  count<-0;
  while (count<n) {
  u2<-runif(1);
  u2<- u2*c;
  if(my_func(u2) < value ) {
  count<-count+1;
  W[count] <- u2;
  }
  }
  return (W);
}

gen_reject(my_func, 100);
