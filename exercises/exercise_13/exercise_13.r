#' # Exercise 13: Data Analysis in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#'
#' ## Task 1: Loading and Exploring Data
#'
#'
#' Load the `iris` data set, display the first few rows, check the structure,
#' and provide a summary of the data set.
#'
#' Your code here:


#' ## Task 2: Scatter Plot
#'
#' Consider the following code snippet:
#'
#'
#' Create a scatter plot of `Petal.Length` vs. `Petal.Width` from the `iris`
#' data set.
#'
#' Hint: Use the `plot` function with the appropriate arguments.
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
#' # Create a box plot of sepal length by species
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
#' # Create a histogram of sepal width
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
#' plot(mtcars$hp,
#'      mtcars$mpg,
#'      xlab = "Horsepower",
#'      ylab = "Miles per Gallon",
#'      main = "Scatter Plot of MPG vs. Horsepower")
#'
#' # Create a bar plot of the number of cylinders
#' barplot(table(mtcars$cyl),
#'         xlab = "Number of Cylinders",
#'         ylab = "Count",
#'         main = "Bar Plot of Number of Cylinders")
#'
#' # Create a box plot of weight by number of cylinders
#' boxplot(mtcars$wt ~ mtcars$cyl,
#'         xlab = "Number of Cylinders",
#'         ylab = "Weight",
#'         main = "Box Plot of Weight by Number of Cylinders")
#'
#' # Create a histogram of quarter mile time
#' hist(mtcars$qsec,
#'      xlab = "Quarter Mile Time",
#'      ylab = "Frequency",
#'      main = "Histogram of Quarter Mile Time")
#'
#' # Compute the correlation matrix
#' cor_matrix <- cor(mtcars[, c("mpg", "hp", "wt", "qsec")])
#'
#' # Display the correlation matrix
#' cor_matrix
#' ```
#'
#' Load the `mtcars` data set, create a scatter plot of `mpg` vs. `hp`, create a
#' bar plot of the number of cylinders, create a box plot of weight by number of
#' cylinders, create a histogram of quarter mile time, compute the correlation
#' matrix for `mpg`, `hp`, `wt`, and `qsec`, and display the correlation matrix.
#'
#' Your code here:


#' ## Task 8: Displaying Results
#'
#' Display the output of loading and exploring the `iris` data set from Task 1,
#' the scatter plot from Task 2, the bar plot from Task 3, the box plot from
#' Task 4, the histogram from Task 5, the correlation matrix from Task 6, and
#' the output of the code snippet from Task 7.
#'
#' Your code here:


#' That's it for Exercise 13! Great job!
