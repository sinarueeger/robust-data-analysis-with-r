## Aim: Explore the dataset drug_use by visualising 
##      the different variables using ggplot2 


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
## (because this is a dataset from the package fivethirtyeight)
?drug_use


## Tidying ----------------------------------------------
drug_freq <- drug_use %>% 
  
  ## select only age, n and all variables that end with _use
  select(age, n, ends_with("_use")) %>%
  
  ## go from wide to a long format
  pivot_longer(-c(age, n), names_to = "drug", values_to = "freq") %>%

  ## replace all values in the drug column from "_use" to ""
  mutate(drug = gsub("_use", "", drug))

head(drug_use)
head(drug_freq)

## Plot the data ----------------------------------------
## use: percentage who use ... 


p1 <- ggplot(data = drug_freq %>%
               filter(drug %in% c(
                 "alcohol", "cocaine", "pain_releiver", "marijuana"
               ))) +
  geom_point(aes(x = age, y = freq, color = drug))

print(p1)

## Plot the data ----------------------------------------
## use: percentage who use ...

p2 <- ggplot(data = drug_freq %>%
               filter(drug %in% c(
                 "alcohol", "cocaine", "pain_releiver", "marijuana"
               ))) +
  geom_point(aes(x = age, y = freq)) +
  facet_wrap(~ drug, scales = "free_y") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ylim(0, NA) +
  theme_bw() +
  ylab("Percentage who use ...")

print(p2)

## Store the plot into a pdf ----------------------------

qp %>% ggsave(., 
              filename = "druguse-freq.pdf", 
              width = 6, 
              height = 6)



## Extra ------------------------------------------------
## add a theme
qp + ggplot2::theme_minimal()
qp + hrbrthemes::theme_ipsum()

## change the theme yourself
ggThemeAssist::ggThemeAssistGadget(qp)