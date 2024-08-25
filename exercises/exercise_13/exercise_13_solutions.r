#' # Exercise 13 Solutions: Data Analysis in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#'
#' ## Task 1: Loading and Exploring Data
#'
#' Consider the following code snippet:
#'
#' ```r
#' # Load the iris data set
#' data(iris)
#'
#' # Display the first few rows
#' head(iris)
#'
#' # Check the structure
#' str(iris)
#'
#' # Provide a summary
#' summary(iris)
#' ```
#'
#' Load the `iris` data set, display the first few rows, check the structure,
#' and provide a summary of the data set.
#'
#' Your code here:


#' ## Task 2: Scatter Plot
#'
#' Consider the following code snippet:
#'
#' ```r
#' # Create a scatter plot of Petal.Length vs. Petal.Width
#' plot(iris$Petal.Length, iris$Petal.Width,
#'      xlab = "Petal.Length", ylab = "Petal.Width",
#'      main = "Scatter Plot of Petal.Length vs. Petal.Width")
#' ```
#'
#' Create a scatter plot of `Petal.Length` vs. `Petal.Width` from the `iris`
#' data set.
#'
#' Your code here:


#' ## Task 3: Bar Plot
#'
#' Consider the following code snippet:
#'
#' ```r
#' # Create a bar plot of the species counts
#' barplot(table(iris$Species),
#'         xlab = "Species",
#'         ylab = "Count",
#'         main = "Bar Plot of Species Counts")
#' ```
#'
#' Create a bar plot of the species counts from the `iris` data set.
#'
#' Your code here:


#' ## Task 4: Box Plot
#'
#' Consider the following code snippet:
#'
#' ```r
#' # Create a box plot of Sepal.Length by species
#' boxplot(iris$Sepal.Length ~ iris$Species,
#'         xlab = "Species",
#'         ylab = "Sepal Length",
#'         main = "Box Plot of Sepal Length by Species")
#' ```
#'
#' Create a box plot of `Sepal.Length` by species from the `iris` data set.
#'
#' Your code here:


#' ## Task 5: Histogram
#'
#' Consider the following code snippet:
#'
#' ```r
#' # Create a histogram of Sepal.Width
#' hist(iris$Sepal.Width,
#'      xlab = "Sepal Width",
#'      ylab = "Frequency",
#'      main = "Histogram of Sepal Width")
#' ```
#'
#' Create a histogram of `Sepal.Width` from the `iris` data set.
#'
#' Your code here:


#' ## Task 6: Correlation Matrix
#'
#' Consider the following code snippet:
#'
#' ```r
#' # Compute the correlation matrix
#' cor_matrix <- cor(iris[, 1:4])
#'
#' # Display the correlation matrix
#' cor_matrix
#' ```
#'
#' Compute the correlation matrix for the first four columns of the `iris` data
#' set and display it.
#'
#' Your code here:


#' ## Task 7: Putting It All Together
#'
#' Consider the following code snippet:
#'
#' ```r
#' # Load the mtcars data set
#' data(mtcars)
#'
#' # Create a scatter plot of mpg vs. hp
#' plot(mtcars$hp, mtcars$mpg,
#'      xlab = "Horsepower", ylab = "Miles per Gallon",
#'      main = "Scatter Plot of MPG vs. Horsepower")
#'
#' # Create a bar plot of the number of cylinders
#' barplot(table(mtcars$cyl),
#'         xlab = "Number of Cylinders",
#'         ylab = "Count",
#'         main = "Bar Plot of Number of Cylinders")
#' ```
#'
#' Load the `mtcars` data set, create a scatter plot of `mpg` vs. `hp`, and
#' create a bar plot of the number of cylinders.
#'
#' Your code here:
