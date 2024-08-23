#' # Lecture 13: A real-world example of using R for data analysis
#' `r Sys.Date()`
#'
#' In this lecture, we will work on a real-world example of using R for data
#' analysis. We will load a data set and perform some basic data exploration and
#' analysis.
#'
#' ** Load the data set
#'
#' The data set we will be using is the `mtcars` data set, which is a built-in
#' data set in R. The data set contains information about various car models,
#' including the number of cylinders, horsepower, and miles per gallon (mpg).
#'
#' Let's load the data set and take a look at the first few rows.
#'
#' Load the mtcars data set
data(mtcars)

#' Display the first few rows of the data set
head(mtcars)

#' Check the structure of the data set
str(mtcars)

#' Summary of the data set
summary(mtcars)

#' These steps provide us with an overview of the data set, including the column
#' names, data types, and summary statistics. We can see that the data set
#' contains 32 observations and 11 variables. The variables include the number
#' of cylinders, horsepower, and miles per gallon (mpg) of each car model. We
#' can use this information to perform further analysis and visualization of the
#' dataset.
#'
#' The data set contains the following columns:
#'
#' - mpg: Miles/(US) gallon
#' - cyl: Number of cylinders
#' - disp: Displacement (cu.in.)
#' - hp: Gross horsepower
#' - drat: Rear axle ratio
#' - wt: Weight (1000 lbs)
#' - qsec: 1/4 mile time
#' - vs: V/S
#'
#' It is also possible to use the `help` function to get more information about
#' the data set (since it is a built-in data set in R).
#'
#' Help on the mtcars data set
#+ eval=FALSE
help(mtcars)

#' This provides additional information about the data set, including the source
#' and description of the dataset.
#'
#' Now that we have loaded and explored the data set, we can perform further
#' analysis and visualization to gain insights from the data.
#'
#' For example, we can create a scatter plot of miles per gallon (mpg) versus
#' horsepower to see if there is a relationship between the two variables.
#'
#' Create a scatter plot of mpg vs. hp
plot(mtcars$hp,
     mtcars$mpg,
     xlab = "Horsepower",
     ylab = "Miles per Gallon",
     main = "Scatter Plot of MPG vs. Horsepower")

#' The scatter plot shows the relationship between miles per gallon (mpg) and
#' horsepower for the car models in the dataset. We can see that there is a
#' negative relationship between the two variables, with higher horsepower
#' values corresponding to lower miles per gallon values. The help page for the
#' plot() function provides more information about customizing plots and adding
#' labels and titles. It also informs us what the arguments are and how they can
#' be used.
#+ eval=FALSE
?plot

#' We see that `x` and `y` are the variables to be plotted, `xlab` and `ylab` are the
#' labels for the `x` and `y` axes, and `main` is the title of the plot. Again, the
#' help function is a valuable resource for learning more about functions and
#' how to use them in R.
#'
#' Let's continue exploring the data set and performing further analysis to gain
#' insights from the data.
#'
#' For instance we can calculate the correlation between the variables in the
#' dataset.
#'
#' Calculate the correlation matrix
correlation_matrix <- cor(mtcars)

#' Display the correlation matrix
print(correlation_matrix)

#' It is clear that the correlation matrix provides information about the
#' relationships between the variables in the dataset. We can see that some
#' variables are positively correlated, while others are negatively correlated.
#'
#' We can also visualize the correlation matrix using a heatmap to better
#' understand the relationships between the variables.
#'
#' Create a heatmap of the correlation matrix
heatmap(
  correlation_matrix,
  col = heat.colors(10),
  symm = TRUE,
  margins = c(10, 10)
)

#' Note that we can organize the code in a more readable way by breaking it into
#' multiple lines. This makes it easier to understand and modify the code. The
#' linebreaks can occur after commas or operators.
#'
#' The heatmap provides a visual representation of the correlation matrix, with
#' warmer colors indicating stronger positive correlations and cooler colors
#' indicating stronger negative correlations. This visualization can help us
#' identify patterns and relationships between the variables in the dataset.
#'
#' Let's add a legend to the heatmap to better understand the color scale.
#'
#' Add a legend to the heatmap. Added the heatmap code again since the legend
#' needs to be added after the heatmap is created, which is not possible in
#' RMarkdown unless evaluated in the same code chunk. This is a workaround,
#' and not necessary for regular R scripts since the plot already exists.
heatmap(
  correlation_matrix,
  col = heat.colors(10),
  symm = TRUE,
  margins = c(10, 10)
)
legend(
  "bottomright",
  legend = c(
    "Strong Negative Correlation",
    "Weak Negative Correlation",
    "No Correlation",
    "Weak Positive Correlation",
    "Strong Positive Correlation"
  ),
  fill = heat.colors(5),
  bty = "n",
  ncol = 1,
  cex = 0.8,
  title = "Correlation Strength"
)

#' The legend provides a key to the color scale used in the heatmap, indicating
#' the strength of the correlation between variables. This additional
#' information helps us interpret the heatmap and understand the relationships
#' between the variables in the dataset.
#'
#' In this lecture, we worked on a real-world example of using R for data
#' analysis. We loaded the `mtcars` data set, explored the data, created
#' visualizations, and calculated the correlation between variables. These steps
#' demonstrate how R can be used to analyze and visualize data, gain insights,
#' and make data-driven decisions.
#'
#' We encourage you to explore the data set further, try different
#' visualizations, and perform additional analysis to deepen your understanding
#' of the data.
#'
#' That's it for this lecture! In the next lecture, we will cover more advanced
#' topics in R and explore additional data analysis techniques.
