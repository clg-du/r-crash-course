#' # Exercise 1 Solutions: Introduction to R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#'

#' ## Task 1: Print Your Name
print("Your Name")

#' ## Task 2: Install a Package
#+ eval=FALSE
install.packages("tidyverse")

#' ## Task 3: Load a Package
#+ eval=FALSE
library(tidyverse)

#' ## Task 4: Learn More About a Package
#+ eval=FALSE
help(tidyverse)

#' ## Task 5: Load a Dataset
#+ eval=FALSE
data(mpg, package = "ggplot2")

#' ## Task 6: View the Dataset
#+ eval=FALSE
View(mpg)

#' ## Task 7: Summarize the Dataset
#+ eval=FALSE
summary(mpg)
