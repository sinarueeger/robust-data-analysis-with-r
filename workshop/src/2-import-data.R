## Aim: Import data into R. 
##      Types of datasets: Text files and Excel files.


## !!! Use "import dataset" on the top-right panel !!!


## Text file ------------------------------------------
## e.g. csv, txt, tsv, anything you can open in a text editor
library(readr)
meteorites <- readr::read_csv("data/meteorites.csv")
head(meteorites)



## xlsx file -------------------------------------------

library(readxl)
dat_raw <- read_excel("data/Wagner-et-al-JGR-Biogeosciences-Data.xlsx", sheet = 2)


## clean the names ------------------------------------
library(janitor)
dat <- dat_raw %>% clean_names()

## compare names
names(dat_raw)
names(dat)


## write xlsx file -------------------------------------

library(writexl)
?write_xlsx
write_xlsx(list(mysheet = dat), path = "data/Wagner-et-al-JGR-Biogeosciences-Data-Sheet2-CLEANED.xlsx")


## different xlsx read/write libraries -----------------
## library(xlsx) is cumbersome to install, hence we are using readxl and writexl here
