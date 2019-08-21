# Introduction of R

> As developers, “tidyevalutions” helps us make sure the user do as little typing as possible and can express really rich ideas [for analysis]. This is what underlies ggplot2 and some of our other libraries (Editor’s note: ggplot2 is a popular data visualization library.) The idea is to get things out of your head and on to the computer as quickly as possible.

https://qz.com/1661487/hadley-wickham-on-the-future-of-r-python-and-the-tidyverse/



[R](https://www.r-project.org/) was developed for statistical data analysis. Or more precisely: The R Project for Statistical Computing.

It is a free software and anyone can contribute to the software by creating a _package_. 

Just celebrated its [25 year anniversary](https://rss.onlinelibrary.wiley.com/doi/10.1111/j.1740-9713.2018.01169.x)

While it was developed to do mainly statistical computations (e.g. regression models) and data visualisation, it has now a lot of additional features that are somehow related to statistics, but could stand on its own. 

Comes with *basic*/*default* packages, but there are over 13'000 R-packages that can be installed through [CRAN](https://cran.r-project.org/web/packages/) or repositories like github.

## Capabilities of R


<div class="figure">
<img src="img/heidibaya.png" width="300" alt="altruistic" />
<p class="caption">Extract from presentation by <a href="https://docs.google.com/presentation/d/1VK1hngMZSY3FT2SrDd4_AHiB28CHrsuSsaFr7r3SAL8/edit#slide=id.p">Heidi Seibold</a></p>
</div>


Beyond being a calculator and being able to estimate statistical models, R can help us to organise the data analysis workflow better. 

- **Communication of results** 
  - through literate programming: `RMarkdown` (blogdown, bookdown, this!)
  - through a web application: `shiny`
- **Data visualisation**: `gganimate`, `ggplot2`, `ggmap`
- **APIs**
  - [access an API](https://medium.com/epfl-extension-school/an-illustrated-introduction-to-apis-10f8000313b9) (_So the API is a layer of code that sits between the database and most database users._)
  - [produce an API](https://medium.com/tmobile-tech/r-can-api-c184951a24a3) (also [these resouces (h/t Sharla Gelfand)](https://twitter.com/sharlagelfand/status/1157794847438364679))

- Importing different types of data that is not txt
- automise computation
- speed up computation
- run on a server
- talk to git
- enforces standards (because you need to work a certan way with a certain structure)


## Constantly improving

There are things R is good at and tasks that R is not that good at. And this has changed over time. Because R is an open source project, the language is constantly evolving & improving. 


## Technical bits: Functions and libraries

- Programming typically works like this: you apply a function to an object. 

- You could also say that you apply an action (a verb) to an object (a noun). 

- Excel also has functions: these are the tabs, and the object would be your active sheet. 

- This is an important propertiy, because a chain of such verbs can create a programming script. 

- If you hear the term library or package, then this is simply a collection of functions. In opensource languages, anyone can contribute a package. And we will do this later. 

- Example with plot: function, arguments, pacakage, libraary, objects

## R vs. RStudio

### R

- https://www.r-project.org/

- core
- anyone can contribute a package
- Show print screen / website
- Download here: https://stat.ethz.ch/CRAN/



<div class="figure">
<img src="img/r-project.png" width="300" alt="rproject" />
<p class="caption">Website of <a href="https://www.r-project.org/">R Project</a></p>
</div>

<div class="figure">
<img src="img/r-project-screenshot.png" width="300" alt="rproject" />
<p class="caption">Screenshot from <a href="https://www.r-project.org/">R Project Website</a></p>
</div>

### RStudio


<div class="figure">
<img src="img/rstudio.png" width="300" alt="rproject" />
<p class="caption">Website of <a href="https://www.rstudio.com/">RStudio</a></p>
</div>

<div class="figure">
<img src="img/rstudio-screenshot.png" width="300" alt="rproject" />
<p class="caption">Screenshot of <a href="https://www.rstudio.com/">RStudio</a></p>
</div>

- User Interface for R
- Works for any computer system (MacOSx, Linux, Windows)
- [Desktop version is free](https://www.rstudio.com/products/rstudio/#Desktop)) if you are an individual user
- develop a lot of new packages, e.g. [shiny](https://www.rstudio.com/products/shiny/)
- anything between teaching and solutions for production
- Where are things in RStudio?: https://twitter.com/RLadiesNCL/status/1138812826917724160/photo/1
- Download here: https://www.rstudio.com/products/rstudio/download/


## Hierarchy of best practices

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


## Getting started

1. **Install** R :
  - On a computer: via [RStudio](https://www.rstudio.com/products/rstudio/download/) or [R project](https://stat.ethz.ch/CRAN/).

  - Or (easier) use R in browser: [rdrr.io/snippets/](https://rdrr.io/snippets/) (no login required) or [Studio Cloud](https://rstudio.cloud/) (login with google or githu baccount).

1. ⁉️ Come up with a **question** you want to answer. 

1. Get your hands on **data** 🔀 Take part in [TidyTuesday](https://github.com/rfordatascience/tidytuesday). 





## More

- Some [history of R](https://statfr.blogspot.com/2018/08/r-generation-story-of-statistical.html)
- [How to install R and RStudio](https://courses.edx.org/courses/UTAustinX/UT.7.01x/3T2014/56c5437b88fa43cf828bff5371c6a924/)
- To use git, github and RStudio, checkout [Happy git with R](https://happygitwithr.com/).


