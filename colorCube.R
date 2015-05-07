# edge
x<-cbind(c(1:1000)/1000,rep(0,1000),rep(0,1000))
y<-cbind(rep(0,1000),c(1:1000)/1000,rep(0,1000))
z<-cbind(rep(0,1000),rep(0,1000),c(1:1000)/1000)
xy<-cbind(c(1:1000)/1000,rep(1,1000),rep(0,1000))
yx<-cbind(rep(1,1000),c(1:1000)/1000,rep(0,1000))
xz<-cbind(c(1:1000)/1000,rep(0,1000),rep(1,1000))
zx<-cbind(rep(1,1000),rep(0,1000),c(1:1000)/1000)
yz<-cbind(rep(0,1000),c(1:1000)/1000,rep(1,1000))
zy<-cbind(rep(0,1000),rep(1,1000),c(1:1000)/1000)
xyz<-cbind(c(1:1000)/1000,rep(1,1000),rep(1,1000))
yxz<-cbind(rep(1,1000),c(1:1000)/1000,rep(1,1000))
zxy<-cbind(rep(1,1000),rep(1,1000),c(1:1000)/1000)
edge<-rbind(x,y,z,zy,yz,xz,zx,xy,yx,zxy,xyz,yxz)
coledge<-rgb(edge)
library("scatterplot3d")
s3d<-scatterplot3d(edge,cex.symbols=0.8,color=coledge,pch=20,box=T,xlab="Low Throughput",ylab="Medium Throughput",zlab="High Throughput")

# data
data <- cbind(runif(50,0,1),runif(50,0,1),runif(50,0,1))
col=(rgb(data))
s3d$points3d(data,pch=20,cex=2,col=col)
# circle the dot to make it clear
s3d$points3d(data,pch=1,cex=1.9)     

# highlight
democase<-cbind(0.36,0.42,0.40)
col2=(rgb(democase))
s3d$points3d(democase,pch=17,cex=1.5,col=col2)
