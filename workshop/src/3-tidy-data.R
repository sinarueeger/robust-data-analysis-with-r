## Aim: Clean meteorites data

## Data: https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-06-11

#variable 	class 	description
#name 	character 	Meteorite name
#id 	double 	Meteorite numerical ID
#name_type 	character 	Name type either valid or relict, where relict = a meteorite that cannot be assigned #easily to a class
#class 	character 	Class of the meteorite, please see Wikipedia for full context
#mass 	double 	Mass in grams
#fall 	character 	Fell or Found meteorite
#year 	integer 	Year found
#lat 	double 	Latitude
#long 	double 	Longitude
#geolocation 	character 	Geolocation

## Import data ----------------------------
#download.file(
#  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-06-11/meteorites.csv", 
#  "~/tmp/meteorites.csv")

dat_raw <- readr::read_csv("data/meteorites.csv")

## Quick glance -----------------------------

## click on the "Environment" tab on the right. 

## Option 1
skimr::skim(dat_raw)

## Option 2
head(dat_raw)

## Option 3
dat_raw %>% janitor::tabyl(name_type)
dat_raw %>% janitor::tabyl(fall)
dat_raw %>% janitor::tabyl(class)

## Option 4
DataExplorer::create_report(dat_raw)


## Look closer -----------------------------

## Acceptable year ranges
range(dat_raw$year, na.rm = TRUE)
dat_raw %>% filter(year > 2019)

## What are the NAs?

## Do we need the Relict cases?
dat_raw %>% janitor::tabyl(name_type)
dat_raw %>% group_by(name_type) %>% summarise(min.year = min(year, na.rm = TRUE), max.year = max(year, na.rm = TRUE))

## Why are there so many class levels?
dat_raw %>% janitor::tabyl(class)

## where was the maximum mass meteorit found?
dat_raw %>% slice(which.max(mass))
dat_raw %>% slice(which.min(mass))

## Tidy up -----------------------------

dat <- dat_raw %>% 
## 1) Remove rows that have year as NA
  filter(!is.na(year)) %>%
## 2) remove name_type Relict cases
  filter(name_type != "Relict") %>%
## 3) remove mass min
  filter(mass > 0) %>%
## 4) remove years with more than 2019
  filter(year <= 2019)

## Extra --------------------------------
## - Create a new variable that simplifies the class label only to a few levels:: use {stringr} or {forcats}
## - add the countries using ggmap

## simplify the class label