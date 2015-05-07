# data
x1 <- rnorm(100)
x2 <- rnorm(100, 2)
# plot
hist(x1, main="", col="orange",ylab="density",
     xlab="x", freq=F, density=55,  xlim=c(-2,5),ylim=c(0,0.5))

par(new = T)
hist(x2, main="", col="green", ylab="", xlab="",axes=F,
     xlim=c(-2,5), ylim=c(0, 0.5),density=45, freq=F)

abline(v=mean(x1), col="orange", lty=2, lwd=2.5)
abline(v=mean(x2), col="green", lty=2, lwd=2.5)

legend(3,0.45,legend=c("x1","x2","mean(x1)","mean(x2)"),
       col=c("orange","green"),fill=c("orange","green", 0, 0),
       lty=c(0,0,2,2), merge=T)
