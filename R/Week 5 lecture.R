library(devtools)
has_devel()
library(roxygen2) 
library(testthat)
library(knitr)


#create a package called praiseme 
usethis::create_package("praiseme")

praise <- function(name, punctuation = "!"){
  glue::glue("You're the best, {name}{punctuation}")
}
praise("Thomas")

usethis::use_r("praise")
