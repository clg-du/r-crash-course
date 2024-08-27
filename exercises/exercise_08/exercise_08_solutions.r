#' # Exercise 8 Solutions: Data Frames in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#'
#' ## Task 1: Creating Data Frames
#'
#' Create the following data frames and assign them to variables:
#'
#' 1. Create a data frame with the following columns:
#'    - name: "Alice", "Bob", "Charlie", "David", "Eve"
#'    - age: 25, 30, 35, 40, 45
#'    - employed: TRUE, FALSE, TRUE, FALSE, TRUE
#'
#' Assign the data frame to a variable called `df1`.
#'
#' 2. Create a data frame with the following columns:
#'    - city: "New York", "Los Angeles", "Chicago", "Houston", "Phoenix"
#'    - population: 8537673, 3976322, 2720546, 2296224, 1660272
#'    - state: "New York", "California", "Illinois", "Texas", "Arizona"
#'
#' Assign the data frame to a variable called `df2`.
#'
#' Your code here:
df1 <- data.frame(
    name = c("Alice", "Bob", "Charlie", "David", "Eve"),
    age = c(25, 30, 35, 40, 45),
    employed = c(TRUE, FALSE, TRUE, FALSE, TRUE)
)

df2 <- data.frame(
    city = c("New York", "Los Angeles", "Chicago", "Houston", "Phoenix"),
    population = c(8537673, 3976322, 2720546, 2296224, 1660272),
    state = c("New York", "California", "Illinois", "Texas", "Arizona")
)


#' ## Task 2: Accessing Data Frame Elements
#'
#' Use indexing to perform the following operations:
#'
#' 1. Access the element in the second row and third column of `df1` and assign
#'    it to a variable called `element1`.
#'
#' 2. Access the value of the "population" column in the fourth row of `df2` and
#'    assign it to a variable called `element2`.
#'
#' Your code here:
element1 <- df1[2, 3]
element2 <- df2[4, "population"]


#' ## Task 3: Manipulating Data Frames
#'
#' Perform the following operations on the data frames:
#'
#' 1. Add a new column to `df1` called "gender" with the values "female",
#'    "male", "male", "female", "female".
#'
#' 2. Change the value of the `employed` column in `df1` to either `"currently
#'    employed"` and `"not employed"`, i.e., a character vector rather than a
#'    logical vector.
#'
#'    Note: Ideally you would solve this by using `if-else` statements, but we
#'          have not covered this yet so you may also solve it any other way you
#'          like.
#'
#' 3. Change the value of the "state" column in the third row of `df2` to
#'    "Michigan".
#'
#' 4. Change the values of the population column in `df2` to millions of people
#'    rather than the full range of numbers.
#'
#' Hint: For task 4 it might be useful to incorporate the built-in `round()`
#' function in R.
#'
#' Your code here:
df1$gender <- c("female", "male", "male", "female", "female")
# Please note that the values here are "hardcoded". We will cover "if-else"
# statements, i.e., conditionals, later in the course.
df1$employed <- c(
    "currently employed",
    "not employed",
    "currently employed",
    "not employed",
    "currently employed"
)
# Here is the solution to Task 3 number 2 but instead using conditionals. It
# takes an logical vector and assigns values based on whether it evaluates as
# TRUE or FALSE.
df1$employed <- ifelse(df1$employed, "currently employed", "not employed")

# 3. Change the value of the "state" column in the third row of `df2` to
#    "Michigan".
df2$state[3] <- "Michigan"

# 4. Change the values of the population column in `df2` to millions of people
#    rather than the full range of numbers.
df2$population <- round(df2$population / 1000000, 2)

#' That's it for Exercise 8! Well done!
#'
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
