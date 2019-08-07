## Aim: create a data visualisation that shows the ... 


## Load necessary libraries ----------------------------

## for dataviz
library(ggplot2)

## the dataset
library(fivethirtyeight) 

## for data munging
library(dplyr)  
library(tidyr)


## Get an overview of the data -------------------------

## Option 1
head(drug_use)

## Option 2
summary(drug_use)

## Option 3
skimr::skim(drug_use)

## Option 4
?drug_use


## Tidying ----------------------------------------------
drug_freq <- drug_use %>% 
  select(age, n, ends_with("_use")) %>%
  pivot_longer(-c(age, n), names_to = "drug", values_to = "freq") %>%
  mutate(drug = gsub("_use", "", drug))


## Plot the data ----------------------------------------
## use: percentage who use ... 

(qp <- ggplot(data = drug_freq %>% 
                filter(drug %in% c("alcohol", "cocaine", "pain_releiver", "marijuana"))) + 
  geom_point(aes(age, freq)) + 
  facet_wrap(~ drug, scales = "free_y") +
  theme_bw() + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + 
  ylim(0, NA) + 
  ylab("Percentage who use ...")
)


## Store the plot into a pdf ----------------------------

qp %>% ggsave(., 
              filename = "druguse-freq.pdf", 
              width = 6, 
              height = 6)



## Task -------------------------------------------------

## - drugs displayed
## - limit age range
## - add line
## - add color
## - change pdf > png
## 

## Extra ------------------------------------------------
qp + theme_minimal()
qp + hrbrthemes::theme_ipsum()
