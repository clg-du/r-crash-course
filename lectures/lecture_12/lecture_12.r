#' # Lecture 12: Control Structures in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#' In this lecture, we will learn about control structures in R.
#'
#' Control structures are used to control the flow of execution in a program.
#' They allow us to make decisions, repeat code, and perform different actions
#' based on conditions.
#'
#' There are three main types of control structures in R:
#'
#' - Conditional statements (if-else)
#' - Loops (`for` and `while` loops)
#' - Functions (user-defined functions)
#'
#' We have already covered functions in a previous lecture, so in this lecture,
#' we will focus on conditional statements and loops.
#'
#' ## Conditional Statements (if-else)
#'
#' Conditional statements allow us to execute different blocks of code based on
#' specified conditions.
#'
#' The basic syntax of an if-else statement in R is as follows:
#'
#+ eval=FALSE
if (condition) {
  # code block to be executed if the condition is TRUE
} else {
  # code block to be executed if the condition is FALSE
}

#' The condition is a logical expression that evaluates to `TRUE` or `FALSE`.
#'
#' Let's look at an example of an if-else statement in R:
#'
#' Define a variable
x <- 5

#' Check if x is greater than 3
if (x > 3) {
  print("x is greater than 3")
} else {
  print("x is not greater than 3")
}

#' In this example, we define a variable `x` with the value `5`. We use an
#' if-else statement to check if `x` is greater than `3`. If the condition `x >
#' 3` is `TRUE`, the message `"x is greater than 3"` is printed.
#'
#' If the condition is `FALSE`, the code block inside the else statement is
#' executed, and the message `"x is not greater than 3"` is printed.
#'
#' There is a variant of the if-else statement called the if-else-if ladder,
#' which allows us to test multiple conditions in sequence.
#'
#' The syntax of an if-else-if ladder in R is as follows:
#'
#+ eval=FALSE
if (condition1) {
  # code block to be executed if condition1 is TRUE
} else if (condition2) {
  # code block to be executed if condition1 is FALSE and condition2 is TRUE
} else {
  # code block to be executed if all conditions are FALSE
}

#' Let's look at an example of an if-else-if ladder in R:
#'
#' Define a variable
y <- 10

#' Check if `y` is less than `5`, between `5` and `10`, or greater than `10`
if (y < 5) {
  print("y is less than 5")
} else if (y >= 5 & y <= 10) {
  print("y is between 5 and 10")
} else {
  print("y is greater than 10")
}

#' In this example, we define a variable `y` with the value `10`. We use an
#' if-else-if ladder to check if `y` is less than `5`, between `5` and `10`, or
#' greater than `10`. Depending on the value of `y`, the corresponding message
#' is printed.
#'
#' A less syntax heavy way to write the above code is to use the `ifelse()`
#' function.
#'
#' The `ifelse()` function is a vectorized version of the if-else statement that
#' can be used to apply conditions to entire vectors.
#'
#' The syntax of the `ifelse()` function in R is as follows:
#'
#+ eval=FALSE
result <- ifelse(condition, value_if_true, value_if_false)

#' Let's look at an example of the `ifelse()` function in R:

#' Define a vector
numbers <- c(1, 2, 3, 4, 5)

#' Apply a condition to the vector using `ifelse()`
result <- ifelse(numbers > 3, "greater than 3", "less than or equal to 3")

#' Display the result
print(result)

#' Finally, there is a shorthand version of the if-else statement called the
#' ternary operator, which is useful for simple conditional assignments.
#'
#' The syntax of the ternary operator in R is as follows:
#+ eval = FALSE
result <- if (condition) value_if_true else value_if_false

#' Let's look at an example of the ternary operator in R:
#'
#' Define a variable
z <- 7

#' Assign a value based on a condition using the ternary operator
result <- if (z > 5) "z is greater than 5" else "z is not greater than 5"

#' Display the result
print(result)

#' In this example, we define a variable `z` with the value `7`. We use the
#' ternary operator to assign a value to the variable result based on the
#' condition `z > 5`. If the condition is `TRUE`, the value `"z is greater than
#' 5"` is assigned to result. If the condition is `FALSE`, the value `"z is not
#' greater than 5"` is assigned to result.
#'
#' ## Loops (for, while)
#'
#' Loops are used to repeat a block of code multiple times.
#'
#' There are two main types of loops in R: `for` loops and `while` loops.
#'
#' ### `for` Loops
#'
#' `for` loops are used to iterate over a sequence of values.
#'
#' The basic syntax of a `for` loop in R is as follows:
#'
#+ eval=FALSE
for (variable in sequence) {
  # code block to be executed for each value of the variable
}

#' The variable takes on each value in the sequence, and the code block is
#' executed for each value.
#'
#' Let's look at an example of a `for` loop in R:
#'
#' Iterate over a sequence of numbers
for (i in 1:5) {
  print(i)
}

#' In this example, we use a `for` loop to iterate over a sequence of numbers
#' from `1` to `5`. For each value of `i` in the sequence, the value of `i` is
#' printed.
#'
#' ### `while` Loops
#'
#' `while` loops are used to repeat a block of code as long as a specified
#' condition is `TRUE`.
#'
#' The basic syntax of a `while` loop in R is as follows:
#+ eval=FALSE
while (condition) {
  #' code block to be executed as long as the condition is TRUE
}

#' The code block is executed repeatedly as long as the condition is `TRUE`.
#'
#' Let's look at an example of a `while` loop in R:
#'
#' Define a variable
j <- 1

#' Repeat a block of code until `j` is greater than `5`
while (j <= 5) {
  print(j)
  j <- j + 1
}

#' In this example, we define a variable `j` with the value `1`. We use a
#' `while` loop to repeat a block of code until `j` is greater than `5`. For
#' each iteration of the loop, the value of `j` is printed, and `j` is
#' incremented by `1`. In Python, shorthand operators are used to perform an
#' arithmetic operation and update a variable in a single step. Instead we need
#' to use the following syntax in R to iterate a variable and update it:
#+ eval = FALSE
x <- 5 
x <- x + 1

#' while in Python, one could write:
#'
#+ eval = FALSE
x = 5 
x += 1

#' This is a simple example of a `while` loop in R.
#'
#' ## Conclusion
#'
#' In this lecture, we learned about control structures in R, including
#' conditional statements (if-else), `for` loops, and `while` loops. These
#' control structures are essential for controlling the flow of execution in a
#' program and performing different actions based on conditions. By using
#' conditional statements and loops, we can make our code more flexible and
#' powerful, allowing us to solve a wide range of problems in R.
#'
#' That's it for this lecture! In the next lecture, we will work with a
#' real-world dataset and apply what we have learned so far in R.
#' 
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")