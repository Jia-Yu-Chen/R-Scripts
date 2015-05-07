# data (in exampledata folder)
gcfragile<-read.table("ref.gc.fra")
# plot
smoothScatter(gcfragile,xlab="GC Content",ylab="Fragile Codon Usage")
# legend
lm<-summary(lm(gcfragile$V2~gcfragile$V1))
coef = round(lm$coefficients[2,1],2)
inte = round(lm$coefficients[1,1],2)
text(0.7,0.6,paste("y = ",coef,"x + ",inte,sep=""))
text(0.7,0.56,paste("R = ",round(sqrt(lm$r.squared),2),sep=""))
