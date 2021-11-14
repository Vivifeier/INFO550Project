
# rule for making report 
report:Rmd_Report/INFO_550_Project_FeierHan.Rmd  Figure/Figure1.jpg
	Rscript -e "rmarkdown::render('Rmd_Report/INFO_550_Project_FeierHan.Rmd', quiet = TRUE)"

# rule for cleaning data
data/INFO550_HW4_data.csv: R/INFO550_DataClean.R data/vaccination-data.csv   
	chmod +x R/INFO550_DataClean.R  && \
	Rscript R/INFO550_DataClean.R 

# rule for ploting the figure1
figure/Figure1.jpg: R/INFO550_Figure1.R data/INFO550_HW4_data.csv
	chmod +x R/INFO550_Figure1.R && \
	Rscript R/INFO550_Figure1.R

# rule for ploting the figure2
figure/Figure2.jpg: R/INFO550_Figure2.R data/INFO550_HW4_data.csv
	chmod +x R/INFO550_Figure2.R && \
	Rscript R/INFO550_Figure2.R
  

.PHONY: report

# document help info
.PHONY: help
help:
		@echo "report: Generate final analysis report."
		@echo "INFO550_HW4_data.csv: process raw data."
		@echo "Figure1.jpg: Make a map plot of vaccines acorss countries."
