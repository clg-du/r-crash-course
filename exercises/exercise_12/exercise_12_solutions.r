#' # Exercise 12: Control Structures in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#'
#' ## Task 1: Conditional Statements
#'
#' Write the if-else statement to check if a value is even or odd and print the
#' appropriate message.
#'
#' Hint: Use the modulo operator `%%` to check for evenness.
#'
#' Your code here:
# Task 1: Conditional Statements

# Write the if-else statement to check if a value is even or odd and print the
# appropriate message.

# Your code here:
value <- 7

if (value %% 2 == 0) {
    print("The value is even.")
} else {
    print("The value is odd.")
}


#' ## Task 2: Loops
#'
#' Write a for loop to print the numbers from 1 to 5.
#'
#' Your code here:
for (i in 1:5) {
    print(i)
}

#' ## Task 3: Functions
#'
#' Write a function called "square" that takes a number as input and returns its
#' square.
#'
#' Your code here:
squared_number <- function(x) {
    return(x^2)
}

#' ## Task 4: Putting It All Together
#'
#' Write a for loop to print the squares of the numbers from 1 to a number `n`
#' using the "square" function.
#'
#' Your code here:
n <- 5

for (i in 1:n) {
    print(squared_number(i))
}

#' ## Task 5: Advanced Control Structures
#'
#' Write an if-else statement that evalutes grades from an exam and prints the
#' corresponding message based on the grade:
#'
#' - A: Excellent
#' - B: Good
#' - C: Satisfactory
#' - D: Needs Improvement
#' - F: Fail
#'
#' The grading scale is as follows:
#'
#' - A: 90-100
#' - B: 80-89
#' - C: 70-79
#' - D: 60-69
#' - F: 0-59
#'
#' Your code here:
grade <- 85

if (grade >= 90) {
    print("Excellent")
} else if (grade >= 80) {
    print("Good")
} else if (grade >= 70) {
    print("Satisfactory")
} else if (grade >= 60) {
    print("Needs Improvement")
} else {
    print("Fail")
}

#' That's it for Exercise 12! Well done!
#'
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
