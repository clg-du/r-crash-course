#' # Exercise 7 Solutions: Matrices in R
#' `r Sys.Date()`
#'
#'
#' ## Task 1: Creating Matrices
#'
#' Create the following matrices and assign them to variables:
#'
#' 1. Create a matrix with the following elements: 1, 2, 3, 4, 5, 6 and assign
#'    it to a variable called `matrix1`. The matrix should have 2 rows and 3
#'    columns.
#'
#' 2. Create a matrix with the following named elements: "A" with value 10, "B"
#'    with value 20, "C" with value 30, "D" with value 40 and assign it to a
#'    variable called `matrix2`. The matrix should have 2 rows and 2 columns.
#'
#' Your code here:
matrix1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
matrix2 <- matrix(c(10, 20, 30, 40), nrow = 2, ncol = 2, dimnames = list(NULL, c("A", "B", "C", "D")))


#' ## Task 2: Accessing Matrix Elements
#'
#' Use indexing to perform the following operations:
#'
#' 1. Access the element in the first row and second column of `matrix1` and
#'    assign it to a variable called `element1`.
#'
#' 2. Access the value of the "B" element in the second row of `matrix2` and
#'    assign it to a variable called `element2`.
#'
#' Your code here:
element1 <- matrix1[1, 2]
element2 <- matrix2[2, "B"]


#' ## Task 3: Manipulating Matrices
#'
#' Perform the following operations on the matrices:
#'
#' 1. Add a new row to `matrix1` with the values 7, 8, 9.
#'
#' 2. Change the value of the "C" element in the first row of `matrix2` to 50.
#'
#' Your code here:
matrix1 <- rbind(matrix1, c(7, 8, 9))
matrix2[1, "C"] <- 50


#' ## Task 4: Display the Results
#'
#' Print the values of all the variables created in Task 1, Task 2, and Task 3.
#'
#' Your code here:
print(matrix1)
print(matrix2)
print(element1)
print(element2)
