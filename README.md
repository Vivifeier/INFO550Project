# INFO550Project
INFO 550 Project

## Software
   R 4.1.1 version

## Data Source

   The dataset is called "WHO Tobacco and Smoking Data 2008-2018". It described cigarettes and tobacca prevalence in a total of 149 countries from year 2008 to 2018 and was download from Kraggle at https://www.kaggle.com/ozgurdogan646/who-tobacco-and-smoking-data-20082018

## Package
  Required packges include:dpyr, tidyr, stringr, corrgram, here, table1, etc.
  They could by installed by the following instructions:
  
```
install.packages("dpyr")
install.packages("stringr")
install.packages("corrgram")
install.packages("here")
install.packages("table1")
```
## Goal
  The method I assume would be applicable is linear regression, the output of the analysis will include the association between cigarettes or tobacca prevalence between treatment in health facilities or regulations on smoking behavior. I will conduct my analysis by R, including packages like ggplot2, tidyverse.

## Execute the analysis
To execute the analysis, from the project folder you can run
```
Rscript -e "rmarkdown::render('INFO_550_Project_FeierHan.Rmd')"
```
This will create a file called report.html output in your directory that contains the results.
