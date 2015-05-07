args <- commandArgs(TRUE);
input = t(as.matrix(read.delim(file=args[1],row.names=1,header=FALSE)))
rowN = nrow(input)
colN = ncol(input)
input = matrix(as.numeric(input), nrow=rowN, ncol=colN);
out=cor(input, use='pairwise.complete.obs', method='spearman')
write.table(out, file="out.tsv")
