# Workshop

- Use live coding
- Have students make predictions
- Use worked examples with labelled subgoals
- mention home directory


## Open RStudio Cloud
- How is RStudio organised
- Environment
- How to open a file
- Run a code
- look something up
- show reprex in R studio cloud
- Starting file from scratch: 1) aim, 2) skeleton with place holders




## Data visualisation

- Open `src/1-dataviz.R`
- Aim: Analyse the use of different drugs in the states with respect to age
- Data

```
library(fivethirtyeight)
kable(drug_use[1:3, 1:5])
```

0. Load libraries
1. look at the data
2. let them estimate which drug is most frequently used
3. make a first plot (points > abline > color)
4. realise that data needs to be reshaped (like color)
  - computer likes things long
  - human like things wide
  - concept of tidy data: each variable its own column, each observation its own row
5. Reshape: Make predictions
6. First facet plot: what would you like to change? 
7. Extra stuff
  - limit to a selection of drugs
  - limit age range
  - add the variable n into the plot
  - add a smoother spline
  - add color to points
  - add a title
  - have drug on the x axis and age as a facetting
  - change pdf > png


### Glimpse

| *Function*      |  `   ` | *Purpose*   |
| :-----        |    :----:   |          :------ |
| 1. `skim()`      |         | A. Show the first 6 lines   |
| 2. `head()`   |          | B. Summarize data with mean, etc.      |
| 3. `summary()`   |          | C. Displaying summary statistics     |


### Plotting

| *Functions*  |  *Purpose* |
|---|---|
| 1. Create a plot   | A. `ylim()` |
| 2. Create a scatterplot |  B. `theme_set()` |
| 3. Create panels | C. `ggsave()` |
| 4. Adjust the y-axis limits |  D.  `geom_point()`  |
| 5. Change the y-axis labels  |  E. `ggplot()` |
| 6. Set a theme  |  F. `facet_wrap()` |
| 7. Save a plot | G.  `ylab()` |



---

## Import data

- Open `src/2-import-data.R`
- Aim: Import an Excel and a text-delimited file.
- Important: import button

1. Start with csv file, csv = comma separated
2. look at it in the "environment"
3. Read in xlsx file
4. Clean names
5. Write cleaned dataset into `.xlsx` file
6. Download to computer, look at it. 
7. Other `read_*` functions, other xlsx libraries
8. Look at other datsets
- import `tmp/otherfile.xlsx` table
- import `tmp/otherfile.txt` data



| *Functions*  |  *Purpose* |
|---|---|
| 1. `read_excel()`   | A. Turn the column names into nice names |
| 2. `read_delim()` | B. Import a delimited text file  |
| 3. `clean_names()` |  C. Write a delimited text file |
| 4. `read_csv()`  |  D.  Import an Excel file |
| 5. `write_delim()`  |  E. Import a comma delimited text file|



---

## Tidy + Transform Data

- Open `src/3-tidy-data.R`
- Aim: Get the metorite fall data analysis-ready. 
- Data: 

```
dat_raw <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-06-11/meteorites.csv")

kable(dat_raw[1:3, c("name", "class", "mass", "year", "lat", "long")])
```

1. Import data
2. Summarise data, usual + dataexplorer
3. Look at each variable
4. Data cleaning with transformation variables
  - Remove rows that have year as NA
  - remove name_type Relict cases
  - remove mass == 0
  - remove years with more than 2019
5. Mention that no mutate here, but often needed
6. Extra: 
  - add a column with `mutate()`
  - rename a column with `rename()`
  - filter rows with `filter()`
  - summarise ... with `group_by` + `summarise`


| *Functions*  |  *Purpose* |
|---|---|
| 1. Contigency table of `var`  | A.  `slice(3)`  |
| 2. Extract all rows that have values > 2 |  B. `mutate(var = var_0 + var_1)` |
| 3. Create a new variable from `var_0` and `var_1`| C.  `tabyl(var)`|
| 4. Rename a column | D. `filter(var > 2)` |
| 5. Extract row #3 | E.  `rename(new_name = old_name)` |
| 6. Group by a variable | F. `group_by(var) %>% summarize(mean(x))`|
| 7. Calculate the mean of a variable | G. `group_by(var)`|
| 8. Select a column | H. `summarise(mean(var))` |
| 9. Calculate the mean of `x` for each level in `var` | I. `select(var)` |



---

## Report with RMarkdown

- Open `src/4-report.Rmd`
- Aim: Create a report for the meteorite fall data.

- Explain markdown
- Explain Rmarkdown: Chunks vs inline text


1. knit the report
2. go through each chunk
3. label chunks
4. comments
5. 
7. Extra
  - add your name as the author
  - change the title into something you like
  - export as pdf/word/markdown



| *Functions*  |  *Purpose* |
|---|---|
| 1. Create a table  | A. `geom_line()` |
| 2. Make a histogram |  B. `kable()`|
| 3. Make a line plot | C. `geom_histogram()` |




### Good to know
- rmarkdown: https://holtzy.github.io/Pimp-my-rmd/
- more about RMarkdown here: https://rmd4sci.njtierney.com/
- Look into xaringan and CSS file, more by [Alison Hill](https://arm.rbind.io/slides/xaringan.html)
- code download button: https://twitter.com/apreshill/status/1108925218850893832


