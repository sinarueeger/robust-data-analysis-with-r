## Aim: import a csv and a xls

library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)

## Avalanche data from WSL --------------------------------------
## from: https://www.envidat.ch/dataset/avalanche-fatalities-switzerland-1936

#tour:
#  activities include back-country ski, snowboard or snow-shoe touring

#offpiste:
#  access from ski area, generally from the top of a skilift with short hiking distances

#transportation.corridors (Techel et al., 2016):
#  people travelling or recreating on open or temporarily closed transportation corridors (e.g. a road user or a skier on a ski run) and people working on open or closed transportation corridors (e.g. maintenance crews on roads, professional rescue teams)

#buildings (Techel et al., 2016):
#  people inside or just outside buildings, and workers on high alpine building sites

download.file("https://www.envidat.ch/dataset/09817bad-b6bf-424a-82a2-f233a1037a42/resource/419fadba-a176-4058-bdc6-94879f56ef29/download/avalanche_fatalities_switzerland_since_1936.csv", "~/tmp/avalanche_fatalities_switzerland_since_1936.csv")

dat_ <- read_csv("~/tmp/avalanche_fatalities_switzerland_since_1936.csv")
dat <- dat_ %>% select(-sum, -unknown) %>% pivot_longer(-hydrological.year, names_to = "type", values_to = "count") %>% separate(hydrological.year, c("year", "year2")) %>% mutate(year = as.numeric(year))

ggplot(data = dat, aes(year, count)) + geom_line() + facet_wrap(~type, scales = "free_y")



## other data ------------------------------------------
## https://opendata.swiss/en/dataset/stand-der-naturgefahrenkartierung-in-den-gemeinden-lawinen/resource/67bfc067-c59c-4d3b-be1e-5ede496f9b9b
## https://opendata.swiss/en/

## Ticks?https://opendata.swiss/en/dataset/zeckenenzephalitis-fruhsommer-meningoenzephalitis-fsme-impfempfehlung

## xlsx -----------------------------------------------
## https://www.epfl.ch/labs/sber/publications-en/published-data/

download.file("https://www.epfl.ch/labs/sber/wp-content/uploads/2018/10/Wagner-et-al-JGR-Biogeosciences-Data.xlsx", "~/tmp/Wagner-et-al-JGR-Biogeosciences-Data.xlsx")

library(readxl)
dat <- read_excel("~/tmp/Wagner-et-al-JGR-Biogeosciences-Data.xlsx", sheet = 2)

dat %>% janitor::clean_names()


## Task -----------------------------------------------
## - import any other xls file

## Extra -----------------------------------------------
## - write xls file
## - xlsx package depends on rjava

library( writexl)
?write_xlsx
tmp <- write_xlsx(list(mysheet = iris))
readxl::read_xlsx(tmp)
