# Workshop


We are going to use [RStudio Cloud](https://rstudio.cloud/spaces/24655/join?access_code=nN9TW6co5lZRS5yKGO4Xp1ZChDUXoyCGVzamIzXQ) and you will need either a google or a github account for this. Make sure that you can open the following link: http://bit.ly/rds-rstudio. Loading RStudio Cloud might take a while. Once it appears, click on "Project" and then "Save a permanent copy".


<!-------------------------------->
## Data visualisation
<!-------------------------------->

<div class="figure">
<img src="https://raw.githubusercontent.com/allisonhorst/stats-illustrations/master/rstats-artwork/ggplot2_exploratory.png" height="500" alt="Cover image" />
<p class="caption">Artwork by <a href="https://github.com/allisonhorst/stats-illustrations">@ allison_horst</a></p>
</div>


### Good to know
- ['{esquisse}'](https://github.com/dreamRs/esquisse) to interactively create a plot. 
- many other \#dataviz libraries in R: [`{gganimate}`](https://github.com/thomasp85/gganimate), [`{plotly}`](https://plot.ly/r/), [`{vegalite}`](https://github.com/hrbrmstr/vegalite)
- [R Graph Gallery](https://www.r-graph-gallery.com/)
- Publication ready plots with [`{cowplot}`](https://github.com/wilkelab/cowplot) and [`{ggpubr}`](https://github.com/kassambara/ggpubr)



<!-------------------------------->
## Import data
<!-------------------------------->

### Good to know

- different r packages to import data: [`{readr}`](), [`{data.table}`]()
- datapasta: https://twitter.com/dataandme/status/1148548556850114561
- fabricatr: https://rviews.rstudio.com/2019/07/01/imagine-your-data-before-you-collect-it/

<!-------------------------------->
## Tidy + Transform Data
<!-------------------------------->


<div class="figure">
<img src="https://raw.githubusercontent.com/allisonhorst/stats-illustrations/master/rstats-artwork/dplyr_wrangling.png" height="500" alt="Cover image" />
<p class="caption">Artwork by <a href="https://github.com/allisonhorst/stats-illustrations">@ allison_horst</a></p>
</div>


### What is tidy data? 

https://r4ds.had.co.nz/tidy-data.html
There are three interrelated rules which make a dataset tidy:

  - Each variable must have its own column.
  - Each observation must have its own row.
  - Each value must have its own cell.


### Good to know

- [`{dplyr`}]()
- [`{janitor`}]() package


<!-------------------------------->
## Report with Rmarkdown
<!-------------------------------->

<div class="figure">
<img src="https://raw.githubusercontent.com/allisonhorst/stats-illustrations/master/rstats-artwork/rmarkdown_wizards.png" height="500" alt="Cover image" />
<p class="caption">Artwork by <a href="https://github.com/allisonhorst/stats-illustrations">@ allison_horst</a></p>
</div>

### Good to know
- https://rmd4sci.njtierney.com/
- rmarkdown: https://holtzy.github.io/Pimp-my-rmd/
- Look into xaringan and CSS file
- code download button: https://twitter.com/apreshill/status/1108925218850893832



<!-------------------------------->
## Git & R
<!-------------------------------->

You use git already: congratulations. 

You want to use git but you are scared: 
- use the interface
- use gist.github.com (great for blogposts and small scripts)
- start with sharing slides / gist.github (from julie lowndes keynote)
- happygit with R
- https://saghirb.github.io/shared/Getting-Started-with-Git-and-GitHub-for-R-Users.html#1
- Playground: https://learngitbranching.js.org/



## Finding neat packages & functions


1. documentation (`lintr`)
1. run all script (`usethis`)
1. version control (`gitr`)
1. unit tests and sanity checks (`testthat`, `assertr`)
1. write functions, package them and tell everyone (`devtools`, `blogdown`)
1. continuous integration (`devtools`, `blogdown`)
1. makefile (caching) (`drake`)
1. binder (`holepunch`)


## R in the wild

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

- video, animation, presentation, website, write to excel
- ...

