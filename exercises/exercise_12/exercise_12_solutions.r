#' # Exercise 12 Solutions: Control Structures in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#'
#' ## Task 1: Conditional Statements
#'
#' Consider the following code snippet:
#'
#' ```r
#' # Define a variable
#' x <- 7
#'
#' # Write an if-else statement to check if x is even or odd
#' # If x is even, print "x is even"
#' # If x is odd, print "x is odd"
#' ```
#'
#' Write the if-else statement to check if `x` is even or odd and print the
#' appropriate message.
#'
#' #' Hint: Use the modulo operator `%%` to check for evenness.
#'
#' Your code here:
x <- 7

if (x %% 2 == 0) {
    print("x is even")
} else {
    print("x is odd")
}

#' ## Task 2: Loops
#'
#' Consider the following code snippet:
#'
#' ```r
#' # Write a for loop to print the numbers from 1 to 5
#' ```
#'
#' Write a for loop to print the numbers from 1 to 5.
#'
#' Your code here:
for (i in 1:5) {
    print(i)
}

#' ## Task 3: Functions
#'
#' Consider the following code snippet:
#'
#' ```r
#' # Write a function called "square" that takes a number as input and returns its square
#' ```
#'
#' Write a function called "square" that takes a number as input and returns its
#' square.
#'
#' Your code here:
square <- function(x) {
    return(x^2)
}

#' ## Task 4: Putting It All Together
#'
#' Consider the following code snippet:
#'
#' ```r
#' # Define a variable
#' n <- 10
#'
#' # Write a for loop to print the squares of the numbers from 1 to n
#' # Use the "square" function defined earlier
#' ```
#'
#' Write a for loop to print the squares of the numbers from 1 to `n` using the
#' "square" function.
#'
#' Your code here:
n <- 10

for (i in 1:n) {
    print(square(i))
}

#' ## Task 5: Advanced Control Structures
#'
#' Consider the following code snippet:
#'
#' ```r
#' # Define a variable
#' y <- 15
#'
#' # Write an if-else-if ladder to check the value of y
#' # If y is less than 10, print "y is less than 10"
#' # If y is between 10 and 20, print "y is between 10 and 20"
#' # If y is greater than 20, print "y is greater than 20"
#' # If none of the conditions are met, print "y is unknown"
#' ```
#'
#' Write an if-else-if ladder to check the value of `y` and print the
#' appropriate message.
#'
#' Your code here:
y <- 15

if (y < 10) {
    print("y is less than 10")
} else if (y >= 10 && y <= 20) {
    print("y is between 10 and 20")
} else if (y > 20) {
    print("y is greater than 20")
} else {
    print("y is unknown")
}

#' ## Task 6: Displaying Results
#'
#' Display the output of the conditional statement from Task 1, the numbers
#' printed by the for loop from Task 2, the result of the "square" function from
#' Task 3, the squares printed by the for loop from Task 4, and the message
#' printed by the if-else-if ladder from Task 5.
#'
#' Your code here:
print(if (x %% 2 == 0) "x is even" else "x is odd")
for (i in 1:5) {
    print(i)
}
print(square(5))
for (i in 1:n) {
    print(square(i))
}
if (y < 10) {
    print("y is less than 10")
} else if (y >= 10 && y <= 20) {
    print("y is between 10 and 20")
} else if (y > 20) {
    print("y is greater than 20")
} else {
    print("y is unknown")
}

#' That's it for Exercise 12! Well done!
#' 
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")