## Aim: Import data into R. 
##      Text files and Excel files.

library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)


## go to "import dataset"

## Text file ------------------------------------------
## e.g. csv, txt, tsv, anything you can open in a text editor

download.file("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-06-11/meteorites.csv", "~/tmp/meteorites.csv")

meteorites <- readr::read_csv("~/tmp/meteorites.csv")

head(meteorites)

## or go to import dataset in the banner


## xlsx -----------------------------------------------
## https://www.epfl.ch/labs/sber/publications-en/published-data/

## get the file (this you usually don't need to do, and in theory, you can directly put it into your path)
download.file("https://www.epfl.ch/labs/sber/wp-content/uploads/2018/10/Wagner-et-al-JGR-Biogeosciences-Data.xlsx", "~/tmp/Wagner-et-al-JGR-Biogeosciences-Data.xlsx")

library(readxl)
## or use library(xlsx), but this can be cumbersome to install

dat_raw <- read_excel("~/tmp/Wagner-et-al-JGR-Biogeosciences-Data.xlsx", sheet = 2)

## clean the names ------------------------------------
dat <- dat_raw %>% janitor::clean_names()

names(dat_raw)
names(dat)


## other files -----------------------------------------------
download.file("https://github.com/mjhendrickson/Tidy-Tuesday/raw/master/Week%2002%20-%20NFL%20Salaries/nfl_salaries.xlsx", "~/tmp/nfl_salaries.xlsx")
download.file("http://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/integrated_call_samples_v3.20130502.ALL.panel", "~/tmp/otherfile.txt")



## Task -----------------------------------------------
## - import otherfile.xlsx
## - import otherfile.txt

## Extra -----------------------------------------------
## - write xls file
## - xlsx package depends on rjava

library( writexl)
?write_xlsx
tmp <- write_xlsx(list(mysheet = iris))
readxl::read_xlsx(tmp)

