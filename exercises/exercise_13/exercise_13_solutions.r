#' # Exercise 13: Data Analysis in R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#'
#' ## Task 1: Loading and Exploring Data
#'
#' Load the `iris` data set, display the first few rows, check the structure,
#' and provide a summary of the data set.
#'
#' Your code here:

# Load the iris dataset
data(iris)

# Display the first few rows
head(iris)

# Check the structure
str(iris)

# Summary of the dataset
summary(iris)


#' ## Task 2: Scatter Plot
#'
#' Create a scatter plot of `Petal.Length` vs. `Petal.Width` from the `iris`
#' data set.
#'
#' Hint: Use the `plot` function with the appropriate arguments.
#'
#' Your code here:

# Scatter plot of Petal.Length vs. Petal.Width
plot(iris$Petal.Length,
    iris$Petal.Width,
    xlab = "Petal Length",
    ylab = "Petal Width",
    main = "Petal Length vs. Petal Width"
)

#' ## Task 3: Bar Plot
#'
#' Create a bar plot of the species counts from the `iris` data set.
#'
#' Your code here:

# Bar plot of species counts
barplot(table(iris$Species),
        xlab = "Species",
        ylab = "Count",
        main = "Species Counts"
)


#' ## Task 4: Box Plot
#'
#' Create a box plot of `Sepal.Length` by species from the `iris` data set.
#'
#' Your code here:

# Box plot of Sepal.Length by species
boxplot(Sepal.Length ~ Species,
        data = iris,
        xlab = "Species",
        ylab = "Sepal Length",
        main = "Sepal Length by Species"
)

#' ## Task 5: Histogram
#'
#' Create a histogram of `Sepal.Width` from the `iris` data set.
#'
#' Your code here:

# Histogram of Sepal.Width
hist(iris$Sepal.Width,
     xlab = "Sepal Width",
     ylab = "Frequency",
     main = "Histogram of Sepal Width"
)


#' ## Task 6: Correlation Matrix
#'
#' Compute the correlation matrix for the first four columns of the `iris` data
#' set and display it.
#'
#' Your code here:

# Correlation matrix for the first four columns
cor(iris[, 1:4])

#' ## Task 7: Heatmap of Correlation Matrix
#' 
#' Create a heatmap of the correlation matrix computed in the previous task.
#'
#' Your code here:

# Compute the correlation matrix for the first four columns of the iris data set
cor_matrix <- cor(iris[, 1:4])

# Create a heatmap of the correlation matrix
heatmap(cor_matrix)


#' That's it for Exercise 13! Great job!
#'
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
