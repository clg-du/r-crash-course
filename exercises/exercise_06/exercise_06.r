#' # Exercise 6: Lists in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#'
#' ## Task 1: Creating Lists
#'
#' Create the following lists and assign them to variables:
#'
#' 1. Create a list with the following elements: 10, "red", TRUE, 3.14 and
#'    assign it to a variable called `my_list`.
#'
#' 2. Create a list with the following named elements: "name" with value "John",
#'    "age" with value 25, "city" with value "New York" and assign it to a
#'    variable called `person`.
#'
#' Your code here:


#' ## Task 2: Accessing List Elements
#'
#' Use indexing to perform the following operations:
#'
#' 1. Access the second element of the first list and assign it to a variable
#'    called `list_element`.
#'
#' 2. Access the value of the "age" element in the second list and assign it to
#'    a variable called `age`.
#'
#' Your code here:


#' ## Task 3: Manipulating Lists
#'
#' Perform the following operations on the lists:
#'
#' 1. Add a new element to the first list with the value "blue" and assign the
#'    modified list to a new variable called `modified_list`.
#'
#' 2. Change the value of the "city" element in the second list to "San
#'    Francisco".
#'
#' Your code here:

#' ## Task 4: A list of lists... of lists!
#'
#' Consider this ridiculousness of nested lists:
nested_lists <- list(
    list(
        list(c(1, 2, 3), c("a", "b", "c"), c(TRUE, FALSE, TRUE)),
        list(c(4, 5, 6), c("d", "e", "f"), c(FALSE, TRUE, FALSE)),
        list(c(7, 8, 9), c("g", "h", "i"), c(TRUE, TRUE, FALSE))
    ),
    list(
        list(c(10, 11, 12), c("j", "k", "l"), c(FALSE, FALSE, TRUE)),
        list(c(13, 14, 15), c("m", "n", "o"), c(TRUE, FALSE, TRUE)),
        list(c(16, 17, 18), c("p", "q", "r"), c(FALSE, TRUE, TRUE))
    ),
    list(
        list(c(19, 20, 21), c("s", "t", "u"), c(TRUE, FALSE, FALSE)),
        list(c(22, 23, 24), c("v", "w", "x"), c(FALSE, TRUE, TRUE)),
        list(c(25, 26, 27), c("y", "z", "aa"), c(TRUE, TRUE, TRUE))
    )
)

#' Access the following elements from the nested list:
#'
#' 1. The letter "w".
#'
#' 2. The number 14.
#'
#' 3. The vector of logical values c(TRUE, TRUE, TRUE) (i.e., all TRUE).
#'
#' Your code here:


#' Access the following elements from the nested list:
#'
#' 1. Access the second element of the third vector in the second list in the
#'   first list and assign it to a variable called `element_1`.

#' That's it for Exercise 6! Well done!
#'
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
