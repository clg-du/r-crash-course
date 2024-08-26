#' # Exercise 10 Solutions: Indexing using Logical Vectors in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#'
#' ## Task 1: Creating Logical Vectors
#'
#' Consider the following vector of numeric values:
#'
my_vector <- c(1, 2, 3, 4, 5)

#'
#' Create the following logical vectors:
#'
#' 1. Create a logical vector called `logical_vector1` that indicates whether
#'    each element of `my_vector` is less than or equal to `3`.
#'
logical_vector1 <- my_vector <= 3

#' 2. Create a logical vector called `logical_vector2` that indicates whether
#'    each element of `my_vector` is equal to `3`.
#'
logical_vector2 <- my_vector == 3

#' 3. Create a logical vector called `logical_vector3` that indicates whether
#'    each element of `my_vector` is greater than `2` and less than `5`.
#'
logical_vector3 <- my_vector > 2 & my_vector < 5


#' ## Task 2: Indexing using Logical Vectors
#'
#'
#' Use the logical vectors to index elements of `my_vector` and assign the
#' results to new variables.
#'
#' 1. Index `my_vector` using `logical_vector1` and assign the result to a
#'    variable called `result_vector1`.
#'
result_vector1 <- my_vector[logical_vector1]

#' 2. Index `my_vector` using `logical_vector2` and assign the result to a
#'    variable called `result_vector2`.
#'
result_vector2 <- my_vector[logical_vector2]

#' 3. Index `my_vector` using `logical_vector3` and assign the result to a
#'    variable called `result_vector3`.
#'
result_vector3 <- my_vector[logical_vector3]


#' ## Task 4: Logical operators without creating logical vectors
#'
#' Index `my_vector` directly using the following conditions without creating
#'
#' 1. Index the vector using the condition `my_vector > 3` and assign the result
#'
result_vector4 <- my_vector[my_vector > 3]

#' 2. Index the vector using the condition `my_vector == 3` and assign the
#'    result
#'
result_vector5 <- my_vector[my_vector == 3]

#' 3. Index the vector using the condition `my_vector <= 3` and assign the
#'    result
#'
result_vector6 <- my_vector[my_vector <= 3]

#' That's it for Exercise 10! Well done!
#' 
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")