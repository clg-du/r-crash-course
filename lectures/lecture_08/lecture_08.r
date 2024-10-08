#' # Lecture 8: Data Frames in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#' In this lecture, we will learn about data frames in R.
#'
#' ## Data Frames in R
#'
#' Data frames are a fundamental data structure in R that allow us to store and
#' manipulate tabular data. They are similar to matrices, but with additional
#' features that make them more flexible and powerful.
#'
#' Data frames...
#'
#' - are two-dimensional arrays in R that can store different types of data.
#' - are created using the `data.frame()` function, which takes named vectors as
#'   arguments.
#' - can have columns of different types (e.g., numeric, character, logical).
#'   This differs from matrices, which can only store elements of the same type.
#' - can be indexed using row and column indices, as well as column names.
#' - are commonly used to represent datasets in R.
#'
#' Let's create a data frame in R!
#'
#' Create a data frame with named vectors The `data.frame()` function takes
#' named vectors as arguments. Each named vector becomes a column in the data
#' frame. We will discuss functions and arguments in more detail in the next
#' lecture. For now, focus on understanding how to create a data frame in R.
my_data_frame <- data.frame(
  name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  age = c(25, 30, 35, 40, 45),
  employed = c(TRUE, FALSE, TRUE, FALSE, TRUE)
)

#' Notice how we have created a data frame with three columns: name, age, and
#' employed. The name column contains character values, the age column contains
#' numeric values, and the employed column contains logical values. This
#' demonstrates how data frames can store columns of different types. Also note
#' that we used named vectors to create the data frame, with the names becoming
#' the column names.
#'
#' Display the data frame The numbers in the leftmost column are row indices,
#' which are automatically assigned by R.
print(my_data_frame)

#' It is possible to assign row names
rownames(my_data_frame) <- c("row_1", "row_2", "row_3", "row_4", "row_5")
print(my_data_frame)

#' Let's reset the row names for now
rownames(my_data_frame) <- NULL

#' Accessing elements of a data frame
#'
#' Elements of a data frame can be accessed using row and column indices, as
#' well as column names. We can use the square brackets `[]` to access elements
#' of a data frame. This is analogous to how we access elements of matrices.
#'
#' Access the element in the first row and second column
print(my_data_frame[1, 2])

#' Access the element in the second row and third column
print(my_data_frame[2, 3])

#' Accessing entire rows or columns of a data frame is similar to accessing
#' elements of a matrix. I refer you to the previous lecture for more
#' information on this topic, and we will not repeat the examples here.

#' We can also change column names
colnames(my_data_frame) <- c("full_name", "years", "is_employed")
print(my_data_frame)

#' We can also add new columns to a data frame For example, let's add a new
#' column called `height` to the data frame. The new column will contain numeric
#' values representing the height of each individual. We can add a new column to
#' a data frame by assigning a vector of values to a new column name. The length
#' of the vector must match the number of rows in the data frame. The `$` sign
#' is used to access columns in a data frame.
my_data_frame$height <- c(160, 170, 180, 190, 200)

#' To see where the `$` sign comes from, let's print the structure of the data
#' frame The structure of the data frame shows the names of the columns and
#' their types.
print(str(my_data_frame))

#' We can also summarize the data frame The `summary()` function provides a
#' summary of the data frame, including the number of observations, the number
#' of missing values, and the distribution of values for each column.
summary(my_data_frame)

#' That's it for this example! In the next lecture, we will learn about
#' functions and arguments in R.
#' 
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")