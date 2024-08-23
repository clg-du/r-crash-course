
#' # Lecture 4: Comparison and Logical Operators in R
#'
#' In this lecture, we will learn about comparison and logical operators in R.
#' 
#' Comparison operators are used to compare values and return logical values (`TRUE` or `FALSE`) based on the comparison.
#' Logical operators are used to combine multiple logical values and return a single logical value.
#' 
#' ## Comparison Operators
#' 
#' Comparison operators are used to compare values and return logical values (`TRUE` or `FALSE`) based on the comparison.
#' 
#' The following comparison operators are commonly used in R:
#' 
#' - Equal to: `==`
#' - Not equal to: `!=`
#' - Greater than: `>`
#' - Greater than or equal to: `>=`
#' - Less than: `<`
#' - Less than or equal to: `<=`
#' 
#' `TRUE` and `FALSE` are special values in R that represent logical values.
#' `TRUE` is used to represent a logical value of `TRUE`, and `FALSE` is used to represent a logical value of `FALSE`.
#' In R, `TRUE` and `FALSE` are predefined constants that are used to represent logical values.
#' We can also use `T` and `F` as shorthand for `TRUE` and `FALSE`.
print(TRUE)
print(FALSE)
print(T)
print(F)

#' Extra: If one sets `T <- FALSE`, or vice versa, the logical values will be updated for the these variables!
#'        Do not do this in practice, as it can lead to confusion...
#'        And do not be mean to other programmers! ;)

#' Let's perform some comparison operations in R!

#' Equal to (`==`)
result_equal_to <- 5 == 3
print(result_equal_to)

#' Not equal to (`!=`)
result_not_equal_to <- 5 != 3
print(result_not_equal_to)

#' Greater than (`>`)
result_greater_than <- 5 > 3
print(result_greater_than)

#' Greater than or equal to (`>=`)
result_greater_than_or_equal_to <- 5 >= 3
print(result_greater_than_or_equal_to)

#' Less than (`<`)
result_less_than <- 5 < 3
print(result_less_than)

#' Less than or equal to (`<=`)
result_less_than_or_equal_to <- 5 <= 3
print(result_less_than_or_equal_to)

#' Logical Operators
#'
#' Logical operators are used to combine multiple logical values and return a single logical value.
#' The following logical operators are commonly used in R:
#' - AND: `&` (both conditions must be TRUE)
#' - OR: `|` (at least one condition must be TRUE)
#' - NOT: `!` (negates the logical value)
#'
#' Let's perform some logical operations in R!
#'
#' AND (`&`)
result_and <- TRUE & FALSE
print(result_and)

#' OR (`|`)
result_or <- TRUE | FALSE
print(result_or)

#' NOT (`!`)
result_not <- !TRUE
print(result_not)

#' In this lecture, we learned about comparison and logical operators in R,
#' including equal to, not equal to, greater than, greater than or equal to, less than, less than or equal to,
#' AND, OR, and NOT.
#'
#' In the next lecture, we will learn about vectors in R.
