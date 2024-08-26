#' # Exercise 11 Solutions: Working with Factors in R
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
fruit_factor <- factor(fruit_vector)

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
size_factor_specified <- factor(size_vector, levels = c("S", "M", "L", "XL"))

#' ## Task 3: Accessing Factor Levels
#'
#'
#' Access the levels of the `size_factor_specified` factor using the `levels()`
#' function and assign the result to a variable called `factor_levels`.
#'
factor_levels <- levels(size_factor_specified)

#' ## Task 4: Modifying Factor Levels
#'
#'
#' Modify the levels of the `size_factor_specified` factor by changing the order
#' to "M", "S", "XL", and "L". Assign the modified factor to a variable called
#' `modified_factor`.
#'
modified_factor <- factor(size_vector, levels = c("M", "S", "XL", "L"))

#' ## Task 5: Factor Operations
#'
#'
#' Perform the following operations on the `size_factor_specified` factor and
#' assign the results to new variables:
#'
#' 1. Compute the frequency of each level in the factor and assign the result to
#'    a variable called `level_frequency`.
#'
level_frequency <- table(size_factor_specified)

#' 2. Compute the cumulative frequency of each level in the factor and assign
#'    the result to a variable called `cumulative_frequency`.
#'
cumulative_frequency <- cumsum(level_frequency)

#' That's it for Exercise 11! Great job!
#' 
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")