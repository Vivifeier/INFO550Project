library(here)
library(corrgram)


here::i_am("Make/INFO550_Figure2.R")


# READ DATA
data<-read.csv(here("Make","INFO550_HW4_data.csv"),fileEncoding = "UTF-8")

#CORRELATION PLOT
jpeg(here::here('Make/Figures','Figure2.jpg'))
corrgram(data[,2:4],lower.panel = panel.shade,upper.panel = panel.cor)
dev.off()


