#' # Exercise 7 Solutions: Matrices in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
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
#' 2. Create a matrix with the following elements: 10, 20, 30, 40 and assign it
#'    to a variable called `matrix2`. The matrix should have 2 rows and 2
#'    columns. Use row names "A" and "B" and column names "C" and "D",
#'    respectively.
#'
#' Hint: Either include the argument `dimnames` in the matrix function or use
#' the `rownames` and `colnames` functions to set the row and column names.
#' The `dimnames` argument takes a list with two elements: the row names and the
#' column names.
#'
#' Your code here:
matrix1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
matrix2 <- matrix(c(10, 20, 30, 40),
    nrow = 2,
    ncol = 2,
    dimnames = list(c("A", "B"), c("C", "D"))
)

#' Alternatively you could have used rownames and colnames functions to set the
#' row and column names:
rownames(matrix2) <- c("A", "B")
colnames(matrix2) <- c("C", "D")

#'
#' ## Task 2: Accessing Matrix Elements
#'
#' Use indexing to perform the following operations:
#'
#' 1. Access the element in the first row and second column of `matrix1` and
#'    assign it to a variable called `element1`.
#'
#' 2. Access the column "D" and second row of `matrix2` and assign it to a
#'    variable called `element2`.
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
#' 2. Change the value of the "C" column in the first row of `matrix2` to 50.
#'
#' Your code here:
matrix1 <- rbind(matrix1, c(7, 8, 9))
matrix2[1, "C"] <- 50

#' That's it for Exercise 7! Well done!
#'
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
