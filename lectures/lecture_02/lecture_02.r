#' # Lecture 2: Objects, Data Types, and Variables in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#' In this lecture, we will learn about objects, data types, and variables in R.
#'
#' Objects are the basic building blocks of R, and they can store data,
#' functions, or other objects. R has several built-in data types, including
#' numeric, character, logical, integer, and complex.
#'
#' Variables...
#'
#' - are used to store objects in R, and they can be assigned using the
#'   assignment operator `<-`. (or `=`, but `<-` is preferred!)
#' - in R are case-sensitive, so `myVar` is not the same as `myvar`.
#' - have names in R which can contain letters, numbers, underscores, and dots,
#'   but they cannot start with a number.
#' - can be assigned to objects, data, functions, or other variables.
#'
#' Let's create some variables in R!
#'
#' Create a numeric variable
my_num <- 42

#' Create a character variable
my_char <- "Hello, World!"

#' Create a logical variable
my_logical <- TRUE

#' Create an integer variable Note: In R, integers are specified by adding an
#' `L` to the end of the number (`L` stands for "long integer"). This tells R to
#' treat the number as an integer rather than a numeric value.
my_int <- 42L

#' Create a complex variable Note: In R, complex numbers are specified using the
#' `i` suffix. The real part is separated from the imaginary part by a `+` sign.
#' We won't be using complex numbers at all in this course, but it's good to
#' know they exist!
my_complex <- 3 + 4i

#' Display the values of the variables
print(my_num)
print(my_char)
print(my_logical)
print(my_int)
print(my_complex)

#' That's it for this example! In the next lecture, we will learn about
#' arithmetic operations in R.
