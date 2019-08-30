# Workshop

The goal of the workshop is to cover most of the data analysis workflow. This includes:

- _Import_ data into R
- Make data analysis-ready through _tidying & transformation_
- _Visualise_ data
- Create a short report about a dataset

We will use data describing drug use in the US and meteorite falls around the world:

1. `drug_use` is a dataset that is provided through a package by [fivethirtyeight](). If you type `data()` into the console, you will see a list of other "in-house" datasets, and if you type for example `?iris` you will see the description of the famous flower dataset. Using an R dataset can be useful when you do not want to bother with the data import. 
1. The meteorite data was provided by [TidyTuesday](). TidyTuesday will be discussed [later](), but in summary, it is a weekly release of a dataset that has already been treated. 

We will guide you through the four R-scripts, but below are some extra tips and information. 

## RStudio Cloud

For the workshop we are going to use [RStudio Cloud](https://rstudio.cloud/spaces/24655/join?access_code=nN9TW6co5lZRS5yKGO4Xp1ZChDUXoyCGVzamIzXQ). 

First, click on the following link: http://bit.ly/rds-rstudio. Then log in with a google account, github account or any email address. 

Loading RStudio Cloud might take a while. Once it appears, click on "Project" and then "Make a permanent copy".

## Goal


<!-------------------------------->
## Data visualisation
<!-------------------------------->

The main data visualisation engine these days is the `ggplot2` package. 

<div class="figure">
<img src="https://raw.githubusercontent.com/allisonhorst/stats-illustrations/master/rstats-artwork/ggplot2_exploratory.png" height="500" alt="Cover image" />
<p class="caption">Artwork by <a href="https://github.com/allisonhorst/stats-illustrations">@ allison_horst</a></p>
</div>

The main advantage of `ggplot2` is the recipe-like structure, also called _grammar_. However, depending on your needs (e.g. interactivity) there are more suitable packages. 

Here is a list of other R packages:

- ['{esquisse}'](https://github.com/dreamRs/esquisse) is an interface to create a ggplot. 
- Publication ready plots with [`{cowplot}`](https://github.com/wilkelab/cowplot) and [`{ggpubr}`](https://github.com/kassambara/ggpubr)
- many other \#dataviz libraries in R: [`{gganimate}`](https://github.com/thomasp85/gganimate), [`{plotly}`](https://plot.ly/r/), [`{vegalite}`](https://github.com/hrbrmstr/vegalite)

Pick a plot with the [R Graph Gallery](https://www.r-graph-gallery.com/).


<!-------------------------------->
## Import data
<!-------------------------------->

Getting data into R can be cumbersome. This is mainly, because datasets need to be stored in a format that R understands. And typcially we get data from others^[If you are the person supplying yourself with data, make sure that you always store the data consistently, e.g. space delimitted. This way, reading data into R becomes easier.], and we then need to tell R how the data looks like, which can result in a command like this: 

```
read.table("dataset.csv", 
           sep = ",",
           fill = TRUE, 
           row.names = TRUE, 
           header = FALSE,
         col.names = paste0("V", seq_len(ncol)))
```

Instead of remembering this difficult command, RStudio helps us with this command on the top-right ("Environment"). 

<div class="figure">
<img src="img/import-data.png" width="500" alt="Import data" />
</div>

This allows us to import a file like in Excel, and then copy+paste the complicated command into the R-script for reproducibility. 

Relevant R packages: 

- Modern data import packages are [`readr`]() and [`data.table`]()
- [`datapasta`](https://twitter.com/dataandme/status/1148548556850114561) allows you to get data into R by simply marking a table somewhere else, e.g. in a PDF.
- [`fabricatr`](https://rviews.rstudio.com/2019/07/01/imagine-your-data-before-you-collect-it/)

<!-------------------------------->
## Tidy + Transform Data
<!-------------------------------->

Before doing any actual data analysis, we need to bring the data into a analysis-friendly format. Although we humans like datasets that offer a quick overview with several columns, R prefers to have what is called [_tidy data_](https://r4ds.had.co.nz/tidy-data.html). A dataset is tidy when: 

  - Each variable has its own column.
  - Each observation has its row.
  - Each value has its own cell.
  
Here is an example that is not tidy.  

```
 age       n alcohol_use cocaine_use marijuana_use
 12     2798         3.9         0.1           1.1
 13     2757         8.5         0.1           3.4
 14     2792        18.1         0.1           8.7
 ```



But this is a tidy version: 
```
 age       n drug            use
 12     2798 alcohol_use     3.9
 12     2798 cocaine_use     0.1
 12     2798 marijuana_use   1.1
 13     2757 alcohol_use     8.5
 13     2757 cocaine_use     0.1
 13     2757 marijuana_use   3.4
 14     2792 alcohol_use    18.1
 14     2792 cocaine_use     0.1
 14     2792 marijuana_use   8.7
 15     2956 alcohol_use    29.2
...
```

To get to a tidy dataset, we use _reshaping_ functions from the `tidyr`. 

Another step in the data preparation process is data transformation and data cleaning. This step of the data analysis workflow is highly interactive, and one often jumps from one to the other. For example, when doing a descriptive analysis of your dataset you might discover implausible values, which will need to be treated in the data transformation part. 

This is one reason why scripts are so important. If you forgot something in a step right after the data import you can simply add the command and re-run the script. 

Here is the list of handy R packages for data preparation: 

- [`tidyr`]() for reshaping the data
- [`dplyr`]() for transforming the data
- [`janitor`]() for data cleaning


<div class="figure">
<img src="https://raw.githubusercontent.com/allisonhorst/stats-illustrations/master/rstats-artwork/dplyr_wrangling.png" height="500" alt="Cover image" />
<p class="caption">Artwork by <a href="https://github.com/allisonhorst/stats-illustrations">@ allison_horst</a></p>
</div>



<!-------------------------------->
## Report with Rmarkdown
<!-------------------------------->

In the last script, we will bundle everything we learned into one R script. You might notice that this has not the typical `.R` file extension, but instead `.Rmd`. `.Rmd` means RMarkdown and combines the power of [Markdown]() and R. This form of writing is also called _literal programming_. 

Rmarkdown files can be used to create documents, such as a presentation, a website (html) or a document (word or pdf). L

- https://rmd4sci.njtierney.com/
- rmarkdown: https://holtzy.github.io/Pimp-my-rmd/
- Look into xaringan and CSS file


<div class="figure">
<img src="https://raw.githubusercontent.com/allisonhorst/stats-illustrations/master/rstats-artwork/rmarkdown_wizards.png" height="500" alt="Cover image" />
<p class="caption">Artwork by <a href="https://github.com/allisonhorst/stats-illustrations">@ allison_horst</a></p>
</div>




<!-------------------------------->
## Git & R
<!-------------------------------->

We will not get into the details of git. But - RStudio has a git plugin and the book [Happy git with R]() gets you all set. 

- https://saghirb.github.io/shared/Getting-Started-with-Git-and-GitHub-for-R-Users.html#1
- Playground: https://learngitbranching.js.org/

- use the interface
- use gist.github.com (great for blogposts and small scripts)
- start with sharing slides / gist.github (from julie lowndes keynote)
- happygit with R



<!-------------------------------->
## Finding neat packages & functions
<!-------------------------------->


1. Code checking: (styler)[] and (`lintr`)[]
1. unit tests and sanity checks ([`testthat`](), [`assertr`]())
1. Write functions and package them ([`devtools`](), [`usethis`]())
1. Makefile: [`drake`]()
1. Binder: [`holepunch`]()
1. Creating a website: [`blogdown`]()


<!-------------------------------->
## R in the wild: examples
<!-------------------------------->

Here are some examples of R applied by 

- Fun stuff in R: [Thread on Twitter by Amelia McNamara](https://twitter.com/AmeliaMN/status/1126891572807729152?s=09)
- Data Journalism: [Roger Federer @ SRF](https://www.srf.ch/static/srf-data/data/2018/federer/#/en)
- The evolution of a ggplot: [Blogpost by Cederic Scherer](https://cedricscherer.netlify.com/2019/05/17/the-evolution-of-a-ggplot-ep.-1/)
- Research compendium: 
    - [DirectEffBCGPolicyChange by Sam Abbott](https://github.com/seabbs/DirectEffBCGPolicyChange)
    - [Mendelian Randomisation in AD](https://github.com/venexia/MR-antihypertensives-AD)
    - [Fat distribution GWAS](https://github.com/saralpulit/fatdistnGWAS)
    
- Animations: https://github.com/gadenbuie/tidy-animated-verbs#tidy-animated-verbs
- Fun stuff like Memes: https://djnavarro.net/post/memes-are-valid-social-commentary/
- Replication: https://notstatschat.rbind.io/2019/06/16/analysing-the-mouse-autism-data/
- API blogpost
- video, animation, presentation, website, write to excel
- ...

