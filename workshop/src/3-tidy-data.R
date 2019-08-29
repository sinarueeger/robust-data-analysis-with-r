## Aim: Clean meteorites data

## Data source: https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-06-11

## Meteorites dataset:

# variable 	    description
# ----------    ---------------
# name 	        Meteorite name
# id 	          Meteorite numerical ID
# name_type 	  Name type either valid or relict, where relict = a meteorite that cannot be assigned #easily to a class
# class 	      Class of the meteorite, please see Wikipedia for full context
# mass 	        Mass in grams
# fall 	        Fell or Found meteorite
# year          Year found
# lat 	        Latitude
# long 	        Longitude
# geolocation 	Geolocation

## Load packages --------------------------
library(dplyr)
# library(readr)
# library(janitor)
# library(skimr)
# library(DataExplorer)

## Import data ----------------------------

dat_raw <- readr::read_csv("data/meteorites.csv")


## Quick glance -----------------------------

## click on the "Environment" tab on the right. 

## Option 1
skimr::skim(dat_raw)

## Option 2
head(dat_raw)

## Option 3
DataExplorer::create_report(dat_raw)


## Look closer -----------------------------

## "year"
range(dat_raw$year, na.rm = TRUE)  ## Acceptable year ranges
dat_raw %>% filter(year > 2019)

## "fall"
dat_raw %>% janitor::tabyl(fall)

## "name_type"
dat_raw %>% janitor::tabyl(name_type)  ## Do we need the Relict cases?
dat_raw %>% group_by(name_type) %>% summarise(min.year = min(year, na.rm = TRUE), max.year = max(year, na.rm = TRUE))

## "class"
dat_raw %>% janitor::tabyl(class)

## "mass"
range(dat_raw$mass, na.rm = TRUE)

## where was the min + maximum mass meteorit found?
dat_raw %>% slice(which.max(mass))
dat_raw %>% slice(which.min(mass))



## Data transformation (data cleaning) ------------

dat <- dat_raw %>% 
## 1) Remove rows that have year as NA
  filter(!is.na(year)) %>%
## 2) remove name_type Relict cases
  filter(name_type != "Relict") %>%
## 3) remove mass == 0
  filter(mass > 0) %>%
## 4) remove years with more than 2019
  filter(year <= 2019)
