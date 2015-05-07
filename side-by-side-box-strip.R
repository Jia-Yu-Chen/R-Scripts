# random data corresponding to your 5 columns    
x <- data.frame(V = rnorm(100), W = rnorm(100), X = rnorm(100),
                Y = rnorm(100), Z = rnorm(100))
# remove axis with 'axes=F', define wider x-limits with 'xlim' 
stripchart(x[1:5,],vertical=TRUE, pch=19,xlim=c(1,6),axes=F)
# add boxplots next to stripchart, decrease width with 'boxwex'
boxplot(x[1:5,],add=T,at=1.5:5.5,boxwex=0.25,axes=F)
# add custom x axis
axis(1,at=1.25:5.25,labels=names(x))
