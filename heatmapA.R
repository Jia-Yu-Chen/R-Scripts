# data (in exampledata folder)
rpkm <- as.matrix(read.table("RPKM.txt",row.names=1,header=T,na.strings="NA"))
# cal rho
cor <- cor(rpkm,method="spearman",use="pairwise.complete.obs")
# rename
rownames(cor) <- c("Adipose (H)","Skeletal Muscle (H)","Heart (H)","Prefrontal Cortex (H)","Cerebellum (H)","Testis (H)","Liver (H)",
                "Heart (C)","Prefrontal Cortex (C)","Cerebellum (C)","Testis (C)","Liver (C)",
                "Adipose (R)","Skeletal Muscle (R)","Heart (R)","Prefrontal Cortex (R)","Cerebellum (R)","Testis (R)","Liver (R)")
colnames(cor) <- c("Adipose (H)","Skeletal Muscle (H)","Heart (H)","Prefrontal Cortex (H)","Cerebellum (H)","Testis (H)","Liver (H)",
                   "Heart (C)","Prefrontal Cortex (C)","Cerebellum (C)","Testis (C)","Liver (C)",
                   "Adipose (R)","Skeletal Muscle (R)","Heart (R)","Prefrontal Cortex (R)","Cerebellum (R)","Testis (R)","Liver (R)")
# plot
library("gplots")
heatmap.2(cor,Rowv=F,Colv=F,trace="none",
          col=colorRampPalette(c("blue","black","red"))(50))
