
library(here)
library(table1)

here::i_am("Make/INFO550_Figure1.R")


# READ DATA
data<-read.csv(here("Make","INFO550_HW4_data.csv"),fileEncoding = "UTF-8")


jpeg(here::here('Make/Figures','Figure1.jpg'))
par(mfrow=c(1,3))
hist(data$cig_smoke,main = "cigarette smoking prevalence")
hist(data$toba_smoke,main = "tobacco smoking prevalence")
hist(data$toba_use,main = "tobacco use prevalence")

dev.off()

