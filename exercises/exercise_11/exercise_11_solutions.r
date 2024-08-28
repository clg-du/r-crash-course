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

#' ## Task 6: Using factors with real data
#'
#' Consider the `mpg` data set from the ggplot2 package (install, if not already
#' installed)
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
# Identify variables that can be turned into factors
factor_vars <- c("manufacturer", 
"model", 
"year", 
"cylinders", 
"transmission",
"drive", 
"fuel", 
"class")

# Provide reasonable factor levels and order
mpg$manufacturer <- factor(mpg$manufacturer) # No order of levels
mpg$model <- factor(mpg$model) # No order of levels
mpg$year <- factor(mpg$year, 
levels = sort(unique(mpg$year)), 
ordered = TRUE) # Usually treated as date variable, but factor is also possible
mpg$cyl <- factor(mpg$cyl, 
levels = sort(unique(mpg$cyl)), 
ordered = TRUE)
mpg$trans <- factor(mpg$trans) # Some order, but skip it...
mpg$drv <- factor(mpg$drv) # No order of levels
mpg$fl <- factor(mpg$fl) # No order of levels
mpg$class <- factor(mpg$class) # Some order, but skip it...

#' Note that only `displ` and `hwy` could not reasonably be turned
#' into factors. However, if you do not find a NEED to transform into
#' a factor variable, then you may just as well skip doing so!
#'
#' Finally, given the transformed data set, provide the following.
#' 
#' 1. Cars with more than 4 cylinders but less than 8 cylinders.
#' 
#' 2. A barplot of highway miles per gallon for each manufacturer.
# 1. Cars with more than 4 cylinders but less than 8 cylinders.
filtered_cars <- mpg[mpg$cyl > 4 & mpg$cyl < 8, ]

# 2. A barplot of highway miles per gallon for each manufacturer.
barplot(mpg$hwy, names.arg = mpg$manufacturer, xlab = "Manufacturer", ylab = "Highway MPG")

#'
#' That's it for Exercise 11! Great job!
#' 
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")