
# rule for making report 
report:Make/INFO_550_Project_FeierHan.Rmd  Make/Figure/Figure1.jpg Make/Figure/Figure2.jpg
	Rscript -e "rmarkdown::render('Make/INFO_550_Project_FeierHan.Rmd', quiet = TRUE)"

# rule for cleaning data
Make/INFO550_HW4_data.csv: Make/INFO550_DataClean.R Dataset/SmokingAndTobaccoData2008.csv Dataset/SmokingAndTobaccoData2010.csv Dataset/SmokingAndTobaccoData2012.csv Dataset/SmokingAndTobaccoData2014.csv Dataset/SmokingAndTobaccoData2016.csv 
	chmod +x Make/INFO550_DataClean.R  && \
	Rscript Make/INFO550_DataClean.R 

# rule for ploting the figure1
Make/Figure/Figure1.jpg: Make/INFO550_Figure1.R Make/INFO550_HW4_data.csv
	chmod +x Make/INFO550_Figure1.R && \
	Rscript Make/INFO550_Figure1.R

# rule for ploting the figure2
Make/Figure/Figure2.jpg: Make/INFO550_Figure2.R Make/INFO550_HW4_data.csv
	chmod +x Make/INFO550_Figure2.R && \
	Rscript Make/INFO550_Figure2.R
  

.PHONY: report

# document help info
.PHONY: help
help:
		@echo "report: Generate final analysis report."
		@echo "INFO550_HW4_data.csv: process raw data."
		@echo "Figure1.jpg: Distribution of tobacco useage and smoking usage."
		@echo "Figure2.jpg: correlation between tobacco use and smoking behavior."
