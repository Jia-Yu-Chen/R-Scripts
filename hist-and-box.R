# data
data <- rnorm(100,0,1)
# plot
layout(matrix(seq(2)),heights=c(0.7,0.3))
#  c(bottom, left, top, right)
par(mar=c(0,4.1,4.1,2.1))
hist(data,breaks=50,freq=F,main="")
par(mar=c(0,4.1,0,2.1), mgp=c(3,0.5,0.0))
boxplot(data, horizontal=TRUE, axes=FALSE)
