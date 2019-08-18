# Robust Data Analysis

What is data anlysis and what makes it robust?

## Data Analysis

_Data analysis_ is a term that turns raw data into knowledge. This involves data wrangling, statistical analysis, and turning the results into something that is readable. 

[Grolemund & Wickham, 2017](https://r4ds.had.co.nz/workflow-basics.html) presented this as a diagram

<div class="figure">
<img src="https://d33wubrfki0l68.cloudfront.net/571b056757d68e6df81a3e3853f54d3c76ad6efc/32d37/diagrams/data-science.png" width="669" alt="R 4 DS image" />
<p class="caption">From <a href="https://r4ds.had.co.nz/introduction.html">R for Data Science by Grolemund & Wickham, 2017.</a></p>
</div>

- Wrangling is linear
- Understanding is an iterative process
- Portable box

There are other ways to see _data analysis_, for example [Elements & Principles (Hicks & Peng, 2019)](https://arxiv.org/abs/1903.07639), that lays out the elements that build a data analysis, and the principles in assembling them. 

Both ways of looking at data analysis, involve

- tidying data
- reproducibility
- entrance + flow + exit the flow or repeat the flow, modify
- sharing the results (which can then be used as an input again)



## Requirements to Software (robustness)

From this, we can think about the requirements we have to a software. 

It should :
- enhance reproducibility (closed loop, box)
- be used by others (otherwise, sharing code is difficult)
- be continuously developed & improved (new data formats, new communication formats)
- easy to use (high-level language)
- make it easy to exchange results with others


## Programming = Automation

Programming is essentially an automation of a process

- for repeatable tasks (like adding two numbers)
- scalable (many times repeating )
- complicated tasks (variable selection)
- where precision is needed (adding two decimals)
- reusing of frameworks (long code into functions)
- reproduce it

A side effect of a certain automation also brings reproducibility. 


