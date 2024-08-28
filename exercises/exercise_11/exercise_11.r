#' # Exercise 11: Working with Factors in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#'
#' ## Task 1: Creating a Factor
#'
#' Consider the following vector of fruit names:
#'
fruit_vector <- c("apple", "banana", "cherry", "apple", "banana", "cherry")

#'
#' Create a factor called `fruit_factor` from the `fruit_vector` using the
#' `factor()` function.
#'
#' Your code here:


#' ## Task 2: Specifying Factor Levels
#'
#'
#' Consider the following vector of T-shirt sizes:
#'
size_vector <- c("S", "M", "L", "M", "S", "XL", "L", "S", "M")

#'
#' Create a factor called `size_factor_specified` from the `size_vector` using
#' the `factor()` function. Specify the levels of the factor as "S", "M", "L",
#' and "XL".
#'
#' Your code here:


#' ## Task 3: Accessing Factor Levels
#'
#'
#' Access the levels of the `size_factor_specified` factor using the `levels()`
#' function and assign the result to a variable called `factor_levels`.
#'
#' Your code here:


#' ## Task 4: Modifying Factor Levels
#'
#'
#' Modify the levels of the `size_factor_specified` factor by changing the order
#' to "M", "S", "XL", and "L". Assign the modified factor to a variable called
#' `modified_factor`.
#'
#' Your code here:


#' ## Task 5: Factor Operations
#'
#'
#' Perform the following operations on the `size_factor_specified` factor and
#' assign the results to new variables:
#'
#' 1. Compute the frequency of each level in the factor and assign the result to
#'    a variable called `level_frequency`.
#'
#' 2. Compute the cumulative frequency of each level in the factor and assign
#'    the result to a variable called `cumulative_frequency`.
#'
#' Your code here:


#' ## Task 6: Using factors with real data
#'
#' Consider the `mpg` data set from the ggplot2 package (install the package and
#' load it, if not already installed)
library(ggplot2)
data(mpg)

#' You may read up on what each column is describing by using
#+ eval=FALSE
?mpg

#' There is a function in R called `unique()`. It tells us how many unique
#' values a certain vector contains. For instance, the following code gives us
#' information about all unique values of the cylinders, which is only 4 in
#' total.
unique(mpg$cyl))

#' The normal case for when loading data into R, such as a .csv (comma seperated
#' value) file, is that factors are not included.
#' 
#' For this task, give suggestions on which variables can reasonably be turned
#' into factors, and, where applicable provide factor levels or even ordered
#' factors. Transform the columns accordingly!
#' 
#' Finally, given the transformed data set, provide the following.
#' 
#' 1. Cars with more than 4 cylinders but less than 8 cylinders.
#' 
#' 2. A barplot of highway miles per gallon for each manufacturer.


#' That's it for Exercise 11! Great job!
#'
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")

htmltools::includeHTML("../../index_exercises.html")
