# INFO550Project
INFO 550 Project

## Software
   R 4.1.1 version

## Data Source

   The dataset is called "WHO Tobacco and Smoking Data 2008-2018". It described cigarettes and tobacca prevalence in a total of 149 countries from year 2008 to 2018 and was download from Kraggle at https://www.kaggle.com/ozgurdogan646/who-tobacco-and-smoking-data-20082018

## Package
  Required packges include:dpyr, tidyr, stringr, corrgram, here, table1, etc.
  They could by installed by the following instructions:
  
## Goal
  The method I assume would be applicable is linear regression, the output of the analysis will include the association between cigarettes or tobacca prevalence between treatment in health facilities or regulations on smoking behavior. I will conduct my analysis by R, including packages like ggplot2, tidyverse.

## Execute the analysis

### 1. Clone the project to local
download or clone the files
```
git clone https://github.com/Vivifeier/INFO550Project/tree/HW4
```
### 2. Envirnoment
if you don't have the 'renv' package
```
R
if(!require(renv)){
  install.packages("renv")
  require(renv)
}
```
IF the 'renv' package was installed already
```
renv::restore()

## If the required R packages are already availble in your R, then you just need activate the R environment
renv::activate()

## If the process takes too much time, you could manually install the required packages
install.packages("dpyr")
install.packages("stringr")
install.packages("corrgram")
install.packages("here")
install.packages("table1")
```

### 3. Execute the analysis
```
# run the command below under the project directory
make report
```
This will create a file named INFO_550_Project_FeierHan.html in the same folder that contain the results, which can be open with:

open ./Make/INFO_550_Project_FeierHan.html
