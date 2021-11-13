
library(here)
library(table1)

here::i_am("INFO550_Figure1.R")


# READ DATA
data<-read.csv(here("INFO550_HW4_data.csv"),fileEncoding = "UTF-8")


jpeg(here::here('Figure1.jpg'))
par(mfrow=c(1,3))
hist(data1$cig_smoke,main = "cigarette smoking prevalence")
hist(data1$toba_smoke,main = "tobacco smoking prevalence")
hist(data1$toba_use,main = "tobacco use prevalence")

dev.off()

