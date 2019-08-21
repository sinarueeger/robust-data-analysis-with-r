## Aim: This file downloads all the data needed and prepares them when needed.

fs::dir_create(here::here("data"))
fs::dir_create(here::here("out"))

## get the file (this you usually don't need to do, and in theory, you can directly put it into your path)

## Meteorites -----------------------------------------------------------
## Source: TidyTuesday
download.file("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-06-11/meteorites.csv", here::here("data", "meteorites.csv"))


## Publication -----------------------------------------------------------
## Source: https://www.epfl.ch/labs/sber/publications-en/published-data/
## Wagner-et-al-JGR-Biogeosciences-Data.xlsx
download.file("https://www.epfl.ch/labs/sber/wp-content/uploads/2018/10/Wagner-et-al-JGR-Biogeosciences-Data.xlsx", here::here("data", "Wagner-et-al-JGR-Biogeosciences-Data.xlsx"))


## NFL XLSX file --------------------------------------------------------
## Source: TidyTuesday
download.file("https://github.com/mjhendrickson/Tidy-Tuesday/raw/master/Week%2002%20-%20NFL%20Salaries/nfl_salaries.xlsx", here::here("data", "nfl-salaries.xlsx"))


## Sample information ---------------------------------------------------
## Source: 1000 Genomes Project
download.file("http://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/integrated_call_samples_v3.20130502.ALL.panel", here::here("data", "sample-info.txt"))
