## Aim: Clean meteorites data


## Import data ----------------------------
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-06-11/meteorites.csv", 
  "~/tmp/meteorites.csv")

dat_raw <- readr::read_csv("~/tmp/meteorites.csv")

## Quick glance -----------------------------

skimr::skim(dat_raw)
head(dat_raw)
dat_raw %>% janitor::tabyl(name_type)
dat_raw %>% janitor::tabyl(fall)


## remove valid
