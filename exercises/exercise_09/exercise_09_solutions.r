#' # Exercise 9 Solutions: Functions in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#'
#' ## Task 1: Creating User-Defined Functions
#'
#' Create the following user-defined functions:
#'
#' 1. Create a function called `calculate_area` that takes two arguments,
#'    `length` and `width`, and returns the area of a rectangle (length *
#'    width).
#'
#' 2. Create a function called `calculate_volume` that takes three arguments,
#'    `length`, `width`, and `height`, and returns the volume of a rectangular
#'    prism (length * width * height).
#'
#' Your code here:
calculate_area <- function(length, width) {
    area <- length * width
    return(area)
}

calculate_volume <- function(length, width, height) {
    volume <- length * width * height
    return(volume)
}


#' ## Task 2: Calling User-Defined Functions
#'
#' Use the user-defined functions to perform the following operations:
#'
#' 1. Call the `calculate_area` function with `length = 5` and `width = 3` and
#'    assign the result to a variable called `area`.
#'
#' 2. Call the `calculate_volume` function with `length = 4`, `width = 2`, and
#'    `height = 6` and assign the result to a variable called `volume`.
#'
#' Your code here:
area <- calculate_area(length = 5, width = 3)
volume <- calculate_volume(length = 4, width = 2, height = 6)


#' ## Task 3: Built-in Functions vs User-Defined Functions
#'
#' Compare the results of the built-in `sum` function and the user-defined
#' `calculate_area` function.
#'
#' 1. Create a vector of numbers: `numbers <- c(1, 2, 3, 4, 5)`.
#'
#' 2. Use the `sum` function to calculate the sum of the numbers and assign the
#'    result to a variable called `sum_result`.
#'
#' 3. Creating a similar user defined function required conditional statements,
#'    e.g., a `For` loop or `While` loop, which we have not covered yet. You
#'    may, however, attempt to create a user defined function that calculates
#'    the sum of the values in the `numbers` vector.
#'
#' Your code here:
numbers <- c(1, 2, 3, 4, 5)
sum_result <- sum(numbers)
sum_user_defined <- function(x) {
    return(x[1] + x[2] + x[3] + x[4] + x[5])
}
sum_result_user_defined <- sum_user_defined(numbers)

#' That's it for Exercise 9! Great job!
#'
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
