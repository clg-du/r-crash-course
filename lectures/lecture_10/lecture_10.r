#' # Lecture 10: Indexing using Logical Vectors in R
#' `r Sys.Date()`
#'
#' In this lecture, we will learn about indexing using logical vectors in R.
#'
#' Logical vectors are vectors that contain logical values (TRUE or FALSE). They
#' are commonly used to filter and subset data in R.
#'
#' Let's create a vector of numeric values.
my_vector <- c(1, 2, 3, 4, 5)

#' Create a logical vector based on a condition We can use comparison operators
#' to create logical vectors based on conditions. For example, to create a
#' logical vector that indicates whether each element of my_vector is greater
#' than 3, we can use the following syntax:
logical_vector <- my_vector > 3

#' Display the logical vector
print(logical_vector)

#' The resulting logical vector contains TRUE for elements that satisfy the
#' condition (greater than 3) and FALSE for elements that do not.
#'
#' Indexing using logical vectors We can use logical vectors to index elements
#' of a vector. When we use a logical vector to index a vector, only the
#' elements corresponding to TRUE values are returned.
#'
#' Index the vector using the logical vector This will return only the elements
#' of my_vector that satisfy the condition (greater than 3).
result_vector <- my_vector[logical_vector]

#' Display the result vector
print(result_vector)

#' We could have skipped the creation of the logical vector and directly used
#' the condition in the square brackets. This is a common practice in R and can
#' make the code more concise.
#'
#' Index the vector directly using the condition
result_vector <- my_vector[my_vector > 3]

#' Display the result vector
print(result_vector)

#' This approach is often used in R to filter and subset data based on
#' conditions.

#' Let's try again using some other conditions!
#'
#' Index the vector using a different condition
result_vector <- my_vector[my_vector <= 3]

#' Display the result vector
print(result_vector)

#' Index the vector using another condition
result_vector <- my_vector[my_vector == 3]

#' Display the result vector
print(result_vector)

#' Index the vector using a combination of conditions
result_vector <- my_vector[(my_vector > 2) & (my_vector < 5)]

#' Display the result vector
print(result_vector)

#' Logical vectors are powerful tools for filtering and subsetting data in R.
#' They allow us to apply conditions to data and extract specific elements that
#' meet those conditions.
#'
#' That's it for this lecture! In the next lecture, we will learn about factors
#' in R.
