
library(here)
library(table1)
library(dplyr)
library(tidyr)
library(stringr)


#path
here::i_am("Make/INFO550_DataClean.R")


# read data
dat1<-read.csv(here("Dataset/SmokingAndTobaccoData2008.csv"),fileEncoding = "UTF-8") %>% mutate(Year=2008)
dat2<-read.csv(here("Dataset/SmokingAndTobaccoData2010.csv"),fileEncoding = "UTF-8") %>% mutate(Year=2010)
dat3<-read.csv(here("Dataset/SmokingAndTobaccoData2012.csv"),fileEncoding = "UTF-8") %>% mutate(Year=2012)
dat4<-read.csv(here("Dataset/SmokingAndTobaccoData2014.csv"),fileEncoding = "UTF-8") %>% mutate(Year=2014)
dat5<-read.csv(here("Dataset/SmokingAndTobaccoData2016.csv"),fileEncoding = "UTF-8") %>% mutate(Year=2016)

# combine the data and add variable Year accordinglY
data<-rbind(dat1,dat2,dat3,dat4,dat5)

# data cleaning
data1 <- data %>%
  separate(CigaretteSmokingPrevalence,into = c("cig_smoke"),sep = " ") %>%
  separate(TobaccoSmokingPrevalence,into = c("toba_smoke"),sep = " ") %>%
  separate(TobaccoUsePrevalance,into = c("toba_use"),sep = " ") %>%
  mutate(cig_smoke = as.numeric(cig_smoke),
         toba_smoke = as.numeric(toba_smoke),
         toba_use = as.numeric(toba_use)) %>%
  filter(Location != "C") 

#label the variable
label(data1$cig_smoke) <- "Cigarette Smoking Prevalence"
label(data1$toba_smoke) <- "Tobacco Smoking Prevalence"
label(data1$toba_use) <- "Tobacco Use Prevalance"

#save data
write.csv(data1,here("Make/INFO550_HW4_data.csv", na = ""))
