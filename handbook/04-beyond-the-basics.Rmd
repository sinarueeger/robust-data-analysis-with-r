# Beyond the Basics

<!-------------------------------->
## Git & R
<!-------------------------------->

We will not get into the details of git. But - RStudio has a git plugin and the book [Happy git with R](https://happygitwithr.com/) will git you all set. 

<div class="figure">
<img src="https://happygitwithr.com/img/watch-me-diff-watch-me-rebase-smaller.png
" width="700" alt="Cover image" />
<p class="caption">Source <a href="https://happygitwithr.com/">Happy Git with R by Jenny Bryan</a></p>
</div>


Alternatively, you can use [gist.github.com](https://gist.github.com/) to share & store code snippets, notes, thoughts and blog posts. 

<!-------------------------------->
## Examples of R in the wild
<!-------------------------------->

Here are some examples of R applied by 

- Research compendium: 
    - [_Estimating the effect of the 2005 change in BCG policy in England: A retrospective cohort study_ ](https://github.com/seabbs/DirectEffBCGPolicyChange) by [Sam Abbott](https://twitter.com/seabbs).
    - [_Repurposing antihypertensive drugs for the prevention of Alzheimer’s disease: a Mendelian Randomization study_](https://github.com/venexia/MR-antihypertensives-AD) by [Venexia M Walker](https://twitter.com/venexia).
    - [Fat distribution GWAS](https://github.com/saralpulit/fatdistnGWAS) by [Sara Pulit](https://twitter.com/saralpulit).

- Data Journalism: [Roger Federer: 20 years, 20 titles](https://www.srf.ch/static/srf-data/data/2018/federer/#/en) by [SRF Data](https://srfdata.github.io/). 

- Blogpost: [_The evolution of a ggplot_](https://cedricscherer.netlify.com/2019/05/17/the-evolution-of-a-ggplot-ep.-1/) by [Cederic Scherer](https://twitter.com/CedScherer).
    
- [Animations](https://github.com/gadenbuie/tidy-animated-verbs#tidy-animated-verbs) by [Garrick Aden-Buie](https://twitter.com/grrrck).

- Fun stuff like [creating memes](https://djnavarro.net/post/memes-are-valid-social-commentary/) by [Danielle Navarro](https://twitter.com/djnavarro).

- Blogpost on replication: [_Analysing the mouse microbiome autism data_](https://notstatschat.rbind.io/2019/06/16/analysing-the-mouse-autism-data/) by [Thomas Lumley](https://twitter.com/tslumley).

- [API blogpost](https://medium.com/tmobile-tech/r-can-api-c184951a24a3) by [Heather Nolis](https://twitter.com/heatherklus) and [Jacqueline Nolis](https://twitter.com/skyetetra).

- Web applicaiton with Shiny: [iSEE](https://kevinrue.shinyapps.io/isee-shiny-contest/) by [Kevin Rue](https://community.rstudio.com/u/kevinrue), [Charlotte Soneson](https://community.rstudio.com/u/csoneson), [Federico Marini](https://community.rstudio.com/u/federicomarini) and [Aaron Lun](https://github.com/LTLA) ([Winner of the Shiny Contest 2019](https://blog.rstudio.com/2019/04/05/first-shiny-contest-winners/)).

<!-------------------------------->
## Finding neat packages & functions
<!-------------------------------->

### Data import {-}

- [`data.table`](https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html): (Fast) alternative to `readr`.
- [`datapasta`](https://twitter.com/dataandme/status/1148548556850114561): 
- [`fabricatr`](https://rviews.rstudio.com/2019/07/01/imagine-your-data-before-you-collect-it/): Imagine your data before you collect it
- Practical recommendations for organizing spreadsheet data in a way that both humans and computer programs can read: [Data Organization in Spreadsheets](https://www.tandfonline.com/doi/full/10.1080/00031305.2017.1375989) by Broman & Woo (2018).

### Data exploration {-}

- [`vtable`](https://twitter.com/nickchk/status/1109917303947223040?s=09)
- [`skimr`](https://github.com/ropensci/skimr)
- [`DataExplorer`](https://cran.r-project.org/web/packages/DataExplorer/vignettes/dataexplorer-intro.html)

### Data manipulation {-}

- [`data.table`](https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html): (Fast) alternative to `dplyr`. 
- [`janitor`](http://sfirke.github.io/janitor/): data cleaning.


### Data visualisation {-}

- [`esquisse`](https://github.com/dreamRs/esquisse) to interactively create a plot. 

- many other \#dataviz libraries in R: [`gganimate`](https://github.com/thomasp85/gganimate), [`plotly`](https://plot.ly/r/), [`vegalite`](https://github.com/hrbrmstr/vegalite)

- Publication ready plots with [`cowplot`](https://github.com/wilkelab/cowplot) and [`ggpubr`](https://github.com/kassambara/ggpubr)

- Pick a chart type with [R Graph Gallery](https://www.r-graph-gallery.com/)

### ggpubr {-}

<div class="figure">
<img src="https://rpkgs.datanovia.com/ggpubr/tools/README-ggpubr-box-plot-dot-plots-strip-charts-2.png" width="350" alt="Cover image" />
</div>


### holepunch {-}

Make your package binder-ready with [holepunch](https://github.com/karthik/holepunch). 

<div class="figure">
<img src="https://camo.githubusercontent.com/fd4274e8efa5ef6e2e096176bf75465c4746c667/68747470733a2f2f692e696d6775722e636f6d2f6f71576c3531322e706e67" width="600" alt="Cover image" />
<p class="caption">Source: <a href="https://github.com/karthik/holepunch">github/holepunch</a></p>
</div>



### Best practices {-}

- Adhering to style guides with [`styler`](https://github.com/r-lib/styler).
- Unit tests and sanity checks with [`testthat`](https://testthat.r-lib.org/) and [`assertr`](https://github.com/ropensci/assertr). 
- Write functions and package them with [`devtools`](https://devtools.r-lib.org/) and [`usethis`](https://usethis.r-lib.org/). 
- Makefile-like workflows with [`drake`](https://docs.ropensci.org/drake/).

