# data
z <- t(apply(matrix(rnorm(400,0,1),nrow=8),2,sort))
par(bg = "white")
nrz <- nrow(z)
ncz <- ncol(z)
x <- 1:nrz
y <- 1:ncz
# Create a function interpolating colors in the range of specified colors
jet.colors <- colorRampPalette( c("yellow", "red") ) 
# Generate the desired number of colors from this palette
nbcol <- 100
color <- jet.colors(nbcol)
# Compute the z-value at the facet centres
zfacet <- z[-1, -1] + z[-1, -ncz] + z[-nrz, -1] + z[-nrz, -ncz]
# Recode facet z-values into color indices
facetcol <- cut(zfacet, nbcol)
persp(x, y, z, col=color[facetcol], phi=30, theta=50,border=NA,expand=0.8,ticktype="detailed")
