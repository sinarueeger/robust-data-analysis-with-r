## Aim: create a package in R

library(usethis)

## 1. create the package skeleton
create_package("~/tmp/epflcorpid")
## https://www.epfl.ch/campus/services/communication/en/visual-identity/logotype/

## 2. use git
usethis::use_git()

## 3. add a license
usethis::use_mit_license()

## 4. run check
# install.packages("devtools")
devtools::check()

## 5. commit all files with git

## 6. set up git + github
usethis::use_github()
## will update the DESCRIPTION file

## 7. install the package
devtools::install()

## 8. add a rmarkdown readme file
usethis::use_readme_rmd()
## knit + commit + push

## add R file
usethis::use_r("epfl_colors.R")

## usetestthat
usethis::use_testthat

## Rinse and repeat
#load
# document
#devtools::install()
#check

## adapt Readme file


















## 9. clean up if this was only a demo
## install.packages("fs")
## fs::dir_delete("~/tmp/mypackage")