# data (in exampledata folder)
# data-human
human <- as.matrix(read.table("global.h.3",row.names=1))
human <- as.data.frame(human/apply(human,1,sum))
names(human) <- c("up","focal","down")
human <- stack(human)
names(human) <- c("percentage","bin")
# human[is.nan(human$percentage),"percentage"] = rep(0,length(human[is.nan(human$percentage),"percentage"]))
human$species <- c("human")

# data-chimp
chimp <- as.matrix(read.table("global.c.3",row.names=1))
chimp <- as.data.frame(chimp/apply(chimp,1,sum))
names(chimp) <- c("up","focal","down")
chimp <- stack(chimp)
names(chimp) <- c("percentage","bin")
# chimp[is.nan(chimp$percentage),"percentage"] = rep(0,length(chimp[is.nan(chimp$percentage),"percentage"]))
chimp$species <- c("chimp")

# data-rhesus
rhesus <- as.matrix(read.table("global.r.3",row.names=1))
rhesus <- as.data.frame(rhesus/apply(rhesus,1,sum))
names(rhesus) <- c("up","focal","down")
rhesus <- stack(rhesus)
names(rhesus) <- c("percentage","bin")
# rhesus[is.nan(rhesus$percentage),"percentage"] = rep(0,length(rhesus[is.nan(rhesus$percentage),"percentage"]))
rhesus$species <- c("rhesus")

# data-sum
sum <- rbind(human,chimp,rhesus)
sum$species <- factor(sum$species,levels=c("human","chimp","rhesus"))
sum$bin <- factor(sum$bin,levels=c("up","focal","down"))

# plot
library("ggplot2")
ggplot(sum,aes(y=percentage,x=bin)) +
  geom_boxplot() +
  facet_grid(.~species)
