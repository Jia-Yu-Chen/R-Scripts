# data (in exampledata folder)
data<-read.table("interExp.rheMac2",header=T)
# format
dataframe <- stack(data)
names(dataframe) <- c("RPKM","Tissue")
# proportion (row > 0.5)
pro = apply(data,2,function(x){length(which(x>0.5))/nrow(data)})
# plot - 1
library("ggplot2")
ggplot(dataframe,aes(x=RPKM,y=..density..,col=Tissue)) +
  geom_density(size=1,adjust=5)+
  theme(legend.position = c(1,1),
        legend.justification=c(1, 1),
        axis.text.x = element_text(size=rel(1))) +
  scale_color_discrete(labels=paste(colnames(data)," (",pro,")",sep="")) +
  xlim(0,0.5)
# plot - 2
ggplot(dataframe,aes(x=RPKM,col=Tissue)) +
  geom_line(stat="density",size=1,adjust=5)+
  theme(legend.position = c(1,1),
        legend.justification=c(1, 1),
        axis.text.x = element_text(size=rel(1))) +
  scale_color_discrete(labels=paste(colnames(data)," (",pro,")",sep="")) +
  xlim(0,0.5) 
# plot - 3
plot(density(data[,1]),xlim=c(0,0.5),ylim=c(0,10),lwd=2,col=rainbow(7)[1],main="",xlab="RPKM")
lines(density(data[,2]),xlim=c(0,0.5),ylim=c(0,10),lwd=2,col=rainbow(7)[2],main="",xlab="")
lines(density(data[,3]),xlim=c(0,0.5),ylim=c(0,10),lwd=2,col=rainbow(7)[3],main="",xlab="")
lines(density(data[,4]),xlim=c(0,0.5),ylim=c(0,10),lwd=2,col=rainbow(7)[4],main="",xlab="")
lines(density(data[,5]),xlim=c(0,0.5),ylim=c(0,10),lwd=2,col=rainbow(7)[5],main="",xlab="")
lines(density(data[,6]),xlim=c(0,0.5),ylim=c(0,10),lwd=2,col=rainbow(7)[6],main="",xlab="")
lines(density(data[,7]),xlim=c(0,0.5),ylim=c(0,10),lwd=2,col=rainbow(7)[7],main="",xlab="")
options(scipen=999)
legend(0.3,9,paste(colnames(data)," (",pro,")",sep=""),
       col=rainbow(7),border="transparent",box.col = "transparent",lty=1,lwd=2)
