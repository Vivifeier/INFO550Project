FROM rocker/tidyverse

# install R packages like this
# put as close to top of script as possible to make best 
# use of caching and speed up builds
RUN Rscript -e "install.packages('here')"
RUN Rscript -e "install.packages('corrgram')"
RUN Rscript -e "install.packages('table1')"
RUN Rscript -e "install.packages('dplyr')"
RUN Rscript -e "install.packages('stringr')"

# make a project directory in the container
# we will mount our local project directory to this directory
RUN mkdir /project

# copy contents of local folder to project folder in container
COPY ./ /project/

# make R scripts executable
RUN chmod +x /project/Make/*.R
RUN chmod +x /project/Make/*.Rmd

# set an environment variable
ENV foo="tobacca"

# make container entry point bash
CMD /bin/bash 
#CMD Rscript -e "rmarkdown::render('/project/Make/INFO_550_Project_FeierHan.Rmd', quiet = TRUE)"


