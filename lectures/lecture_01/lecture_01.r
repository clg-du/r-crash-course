#' # Lecture 1: Introduction to R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#'
#' Here we will learn the basics of the R programming language.
#'
#' ## Comments in R
#'
#' Comments in R...
#'
#' - are preceded by the `#` symbol.
#' - are used to explain the code and make it more readable.
#' - are ignored by the R interpreter.
#' - can be on a line by themselves or at the end of a line of code.
#' - can be used to temporarily disable a line of code.
#' - can be used to document the code.
#' - can be used to make the code more readable.
#'
#' Adding an apostrophe after the `#` symbol, i.e., `#'`, creates a Roxygen
#' comment. Roxygen comments are used to generate documentation for functions
#' and packages. Roxygen comments are used to create documentation for R
#' packages. It is also useful to write comments that can be used to generate
#' markdown documentation, such as the one you are reading now.
#'
#' Here is a simple example of a comment in R:
#'

# This is a comment in R

#' This is a Roxygen comment in R

#'
#' Comments are not executed by the R interpreter and are used to provide
#' additional information about the code.
#'
#' ## Running R code
#'
#' R is an interpreted language, which means that code is executed line by line.
#' You can run each line of code individually in the R console or run the entire
#' script at once.
#'
#' To run the entire script, you can use the `source()` function in R. The
#' `source()` function reads and executes an R script file.
#'
#' Here is an example of running an R script using the `source()` function:

# source("path/to/your/script.R")

#' In RStudio, you can run the entire script by clicking the "Source" button in
#' the script editor or by using the keyboard shortcut `Ctrl + Shift + S`.
#'
#' Normally, you would run the entire script or certain sections of the script
#' by highlighting the code and using the "Run" button or the keyboard shortcut
#' `Ctrl + Enter`.
#'
#' Note: Any recommended keyboard shortcut may vary depending on your operating
#' system, RStudio version, or any other IDE you are using, such as VS Code or
#' Jupyter Notebook, for example.
#'
#' ## Our first `"Hello World!"` program in R
#'
#' This example is a simple R script that prints `"Hello, World!"` to the
#' console. `print()` is a built-in function in R that prints the specified
#' value to the console.
#'
#' R is case-sensitive, so `print` is not the same as `Print`.
#'
#' Print `"Hello, World!"` to the console
print("Hello, World!")

#' In R indentation is not required, but it is recommended for readability. In
#' RStudio you can highlight code and use `Ctrl + Shift + A` to clean up the
#' code and automatically indent it.

#' ## Packages

#' Packages in R are collections of functions and data sets developed by the
#' community. We can install and load packages in R using the
#' `install.packages()` and `library()` functions.
#'
#' Install the "car" package
#+ eval = FALSE
install.packages("car")

#' Load the `car` package
library(car)

#' The `car` package contains a dataset called `mtcars`. We can access this
#' dataset using the `data()` function.
#'
#' Load the `mtcars` dataset
data(mtcars)

#' Display the first few rows of the `mtcars` dataset
head(mtcars)

#' We can also use the `summary()` function to get a summary of the dataset.
#'
#' Get a summary of the `mtcars` dataset
summary(mtcars)

#' That's it for this example! In the next lecture, we will learn more about
#' objects, data types, and variables in R.
