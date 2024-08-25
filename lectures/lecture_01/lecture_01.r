#' # Lecture 1: Introduction to R
#' `r Sys.Date()`
readLines("../../index_lectures.html")
#'
#'
#' [Introduction to R](/lectures/lecture_01/lecture_01.md) [Objects, Data Types,
#' and Variables in R](/lectures/lecture_02/lecture_02.md)
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
#' Adding an apostrophe after the `#` symbol creates a Roxygen comment. Roxygen
#' comments are used to generate documentation for functions and packages.
#' Roxygen comments are used to create documentation for R packages. It is also
#' useful to write comments that can be used to generate markdown documentation,
#' such as the one you are reading now.
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
