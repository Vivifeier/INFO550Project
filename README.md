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

### 1. Clone the project
```
git clone https://github.com/Vivifeier/INFO550Project/tree/HW5
```
### 2. Docker Image
```
## Pull the image from Dockerhub to local
docker pull feierhan/info550:feier-hw5

## Pull the image from Dockerhub to local
docker run -it feierhan/info550:feier-hw5 /bin/bash
```

### 3. Mount the output to local directory
```
# create a local directory for mounting
mkdir {your_pwd}/output
# OR mkdir output

# mount the output directory to local and get access to the image
cd {your_pwd}/INFO550Project-HW5
docker run -v {your_pwd}/output:/project/output -it feierhan/info550:feier-hw5
```

### 4. Produce the result
```
# go to the project folder under docker container
cd project

# generate the report
make report

# exit the docker container
#exit
```

### 5. Examine the report locally

The final report named 'INFO550_Project_FeierHan.html' that contain the results has been created in your local folder , which can be open with:
```
open {your_pwd}/output/INFO550_Project_FeierHan.html
```
