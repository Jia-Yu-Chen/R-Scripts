# data
target <- rnorm(1000,0,1)
nontarget <- rnorm(1000,0,1)
breaks <- seq(-3,3,by=0.2)
cuts.target=table(cut(target,breaks,right=FALSE))
cuts.nontarget=table(cut(nontarget,breaks,right=FALSE))
data= rbind(cuts.nontarget,cuts.target)
# plot
barplot(data,beside=T,ylab="Frequency",xlab="RPKM")
legend(2,60,legend=c("target","non-Targets"),col=c("black","gray"),lty=c(1,1),lwd=c(10,10),box.col='white')
