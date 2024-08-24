#' # Exercise 5 Solutions: Vectors in R
#' `r Sys.Date()`
#'
#'
#' ## Task 1: Creating Vectors
#'
#' Create the following vectors and assign them to variables:
#'
#' 1. Create a numeric vector with values 10, 20, 30, 40, 50 and assign it to a
#'    variable called `numeric_vector`.
#'
#' 2. Create a character vector with values "red", "green", "blue", "yellow",
#'    "orange" and assign it to a variable called `character_vector`.
#'
#' 3. Create a logical vector with values TRUE, FALSE, TRUE, FALSE, TRUE and
#'    assign it to a variable called `logical_vector`.
#'
#' Your code here:
numeric_vector <- c(10, 20, 30, 40, 50)
character_vector <- c("red", "green", "blue", "yellow", "orange")
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE)


#' ## Task 2: Accessing Vector Elements
#'
#' Use indexing to perform the following operations:
#'
#' 1. Access the second element of the numeric vector and assign it to a
#'    variable called `numeric_element`.
#'
#' 2. Access the third element of the character vector and assign it to a
#'    variable called `character_element`.
#'
#' 3. Access the last element of the logical vector and assign it to a variable
#'    called `logical_element`.
#'
#' Your code here:
numeric_element <- numeric_vector[2]
character_element <- character_vector[3]
logical_element <- logical_vector[length(logical_vector)]


#' ## Task 3: Manipulating Vectors
#'
#' Perform the following operations on the vectors:
#'
#' 1. Add 5 to each element of the numeric vector and assign the result to a new
#'    variable called `numeric_vector_plus_5`.
#'
#' 2. Concatenate the character vector with itself and assign the result to a
#'    new variable called `character_vector_concatenated`.
#'
#' 3. Negate the logical vector and assign the result to a new variable called
#'    `logical_vector_negated`.
#'
#' Your code here:
numeric_vector_plus_5 <- numeric_vector + 5
character_vector_concatenated <- c(character_vector, character_vector)
logical_vector_negated <- !logical_vector


#' ## Task 4: Display the Results
#'
#' Print the values of all the variables created in Task 1, Task 2, and Task 3.
#'
#' Your code here:
print(numeric_vector)
print(character_vector)
print(logical_vector)
print(numeric_element)
print(character_element)
print(logical_element)
print(numeric_vector_plus_5)
print(character_vector_concatenated)
print(logical_vector_negated)