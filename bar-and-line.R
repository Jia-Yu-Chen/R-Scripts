# data
x <- c(1,2,3,5,2,3,1)
names <- c("100","200","300","400","500","600","700")
# plot - 1
barplot(x,names.arg=names,space=0.1,
        xlab="x",ylab="y",main="main") 
lines(lowess(x,f=1), type="b", lwd=2, lty=3, col="blue")
# plot - 2
library(plotrix) 
barp(x, names.arg=names, xlab="",ylab="y",main="main",height.at=0:5) 
lines(spline(1:7,x,xmin=0,xmax=8))
