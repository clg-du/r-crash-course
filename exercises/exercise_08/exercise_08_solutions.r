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
#'    - employed: TRUE, FALSE, TRUE, FALSE, TRUE Assign the data frame to a
#'    variable called `df1`.
#'
#' 2. Create a data frame with the following columns:
#'    - city: "New York", "Los Angeles", "Chicago", "Houston", "Phoenix"
#'    - population: 8537673, 3976322, 2720546, 2296224, 1660272
#'    - state: "New York", "California", "Illinois", "Texas", "Arizona" Assign
#'    the data frame to a variable called `df2`.
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
#' 2. Change the value of the "state" column in the third row of `df2` to
#'    "Michigan".
#'
#' Your code here:
df1$gender <- c("female", "male", "male", "female", "female")
df2[3, "state"] <- "Michigan"


#' ## Task 4: Display the Results
#'
#' Print the values of all the variables created in Task 1, Task 2, and Task 3.
#'
#' Your code here:
print(df1)
print(df2)
print(element1)
print(element2)

#' That's it for Exercise 8! Well done!
#' 
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")