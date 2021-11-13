

library(here)
library(table1)
library(corrgram)


here::i_am("INFO550_Figure2.R")


# READ DATA
data<-read.csv(here("INFO550_HW4_data.csv"),fileEncoding = "UTF-8")

#CORRELATION PLOT
jpeg(here::here('Figure2.jpg'))
corrgram(data[,2:4],lower.panel = panel.shade,upper.panel = panel.cor)
dev.off()

