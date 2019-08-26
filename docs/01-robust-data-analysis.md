# Data Analysis

_Data analysis_ is a term that turns raw data into knowledge. This involves data import, data wrangling, statistical data analysis, and turning the results into something that is readable by a human. 

[Grolemund & Wickham, 2017](https://r4ds.had.co.nz/workflow-basics.html)^[There are other ways to see _data analysis_, for example [Elements & Principles (Hicks & Peng, 2019)](https://arxiv.org/abs/1903.07639), that lays out the elements that build a data analysis, and the principles in assembling them.] presented this as a diagram. 

<div class="figure">
<img src="https://d33wubrfki0l68.cloudfront.net/571b056757d68e6df81a3e3853f54d3c76ad6efc/32d37/diagrams/data-science.png" width="669" alt="R 4 DS image" />
<p class="caption">From <a href="https://r4ds.had.co.nz/introduction.html">R for Data Science by Grolemund & Wickham, 2017.</a></p>
</div>

The diagram makes clear, that the data analysis workflow consists of different modules that depend on the previous one, and that there is directionality in the flow: an entrance, iteration and en exit. That only _tidy data_ is useful for the analysis, that _wrangling is linear_, but that _understanding_ is an iterative process, that the analysis is a portable & isolated box. Lastly, sharing of results is key. 

## Data analysis in reality

In reality, data wrangling is rarely linear, instead a forth and back. Therefore, flexibility in moving through these modules with software is key. 

<div class="figure">
<img src="img/dailyworkflow/dailyworkflow.002.jpeg" width="669" alt="R 4 DS image" />
</div>

## Requirements to data analysis software

What else is important for software? 

Software should should be used by others (otherwise, sharing code is difficult), be continuously developed & improved (new data formats, new communication formats), easy to use (high-level language),  Translation of modules to Code, make it easy to exchange results with others.


