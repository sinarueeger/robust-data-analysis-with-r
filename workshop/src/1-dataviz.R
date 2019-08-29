## Aim: Explore the dataset `drug_use` by visualising 
##      the different variables with the R-package ggplot2 


## Load necessary libraries ----------------------------

## the dataset
library(fivethirtyeight) 

## for dataviz
library(ggplot2)
library(ggpubr)

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


## Scatterplot ------------------------------------------

## plot alcohol vs sedatives
qplot(alcohol_use, marijuana_use, data = drug_use)

## add an identity line
qplot(alcohol_use, marijuana_use, data = drug_use) + 
  geom_abline(intercept = 0, slope = 1)

## color each point by the age group
qplot(alcohol_use, marijuana_use, color = age, data = drug_use) + 
  geom_abline(intercept = 0, slope = 1)


## Reshaping dataset --------------------------------------

drug_use_long <- drug_use %>% 
  
  ## select only age, n and all variables that end with _freq
  select(age, n, ends_with("_use")) %>%
  
  ## go from wide to a long format
  pivot_longer(-c(age, n), names_to = "drug", values_to = "use") %>%

  ## replace all values in the drug column from "_freq" to ""
  mutate(drug = gsub("_use", "", drug))

## now compare the two of them
head(drug_use)
head(drug_use_long)


## Plot the data ----------------------------------------
## use: percentage who use ... 

p1 <- ggplot(data = drug_use_long) +
  geom_point(aes(x = age, y = use, color = drug))

print(p1)


## Plot the data ----------------------------------------
## use: percentage who use ...

p2 <- ggplot(data = drug_use_long) +
  geom_point(aes(x = age, y = use)) +
  
  ## add panels
  facet_wrap(~ drug, scales = "free_y") +
  
  ## change to a different theme
  theme_bw() +
  
  ## fix the y-axis at 0
  ylim(0, NA) +
  
  ## add a y-axis label
  ylab("Percentage who use ...") + 
  
  ## rotate the x-axis labels
  ggpubr::rotate_x_text(angle = 45)

print(p2)


## Store the plot into a pdf ----------------------------

p2 %>% ggsave(., 
              filename = "drug-use.pdf", 
              width = 6, 
              height = 6)



## Extra ------------------------------------------------
## change the theme
p2 + ggplot2::theme_minimal()
p2 + hrbrthemes::theme_ipsum()

## change the theme yourself
ggThemeAssist::ggThemeAssistGadget(p2)
