#!/bin/bash


## So many targets produced, that Makefile seems too complicated (for me), but
## next time: https://monashbioinformaticsplatform.github.io/2017-11-16-open-science-training/topics/automation.html


Rscript -e 'rmarkdown::render("slides/slides-robust-da.Rmd")'
Rscript -e 'rmarkdown::render("handbook/index.Rmd")'
Rscript -e 'rmarkdown::render("handbook/01-robust-data-analysis.Rmd")'
Rscript -e 'rmarkdown::render("handbook/02-introduction-to-R.Rmd")'
Rscript -e 'rmarkdown::render("handbook/03-workshop.Rmd")'
Rscript -e 'rmarkdown::render("handbook/04-learning-R.Rmd")'
Rscript -e 'rmarkdown::render("handbook/05-appendix.Rmd")'

## copy slides over to doc
cp slides/slides-robust-da.html docs/slides-robust-da.html