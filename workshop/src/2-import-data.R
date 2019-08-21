## Aim: Import data into R. 
##      Text files and Excel files.

library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)


## go to "import dataset"

## Text file ------------------------------------------
## e.g. csv, txt, tsv, anything you can open in a text editor

meteorites <- readr::read_csv("data/meteorites.csv")

head(meteorites)

## or go to import dataset in the banner


## xlsx -----------------------------------------------

library(readxl)
## or use library(xlsx), but this can be cumbersome to install

dat_raw <- read_excel("data/Wagner-et-al-JGR-Biogeosciences-Data.xlsx", sheet = 2)

## clean the names ------------------------------------
dat <- dat_raw %>% janitor::clean_names()

names(dat_raw)
names(dat)


## write xlsx file -----------------------------------------------

library( writexl)
?write_xlsx
tmp <- write_xlsx(list(mysheet = iris))
readxl::read_xlsx(tmp)

