#' # Lecture 11: Factors in R
#' `r Sys.Date()`
#'
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#' In this lecture, we will learn about factors in R.
#'
#' Factors are used to represent categorical data in R. They are an essential
#' data structure for working with categorical variables. Factors are created
#' using the `factor()` function in R.
#'
#' Let's create a factor in R!
#'
#' ## Creating a vector of categorical data
#'
#' We can use the `c()` function to create a vector of categorical data. For
#' example, let's create a vector of fruit names.
fruit_vector <- c("apple", "banana", "cherry", "apple", "banana", "cherry")

#' Display the vector
print(fruit_vector)

#' Create a factor from the vector We can use the `factor()` function to convert
#' a vector of categorical data into a factor. The `factor()` function takes the
#' vector of data as an argument.
fruit_factor <- factor(fruit_vector)

#' Display the factor
print(fruit_factor)

#' Factors are displayed with their levels and corresponding indices. The levels
#' represent the unique categories in the factor. The indices represent the
#' position of each element in the factor.
#'
#' Factors are useful for representing categorical data in R.
#'
#' Let's explore factors further!
#'
#' Create a factor with specified levels We can specify the levels of a factor
#' using the levels argument of the `factor()` function. This allows us to
#' define the categories and order of the levels. Let's showcase this with a
#' factor representing the size of T-shirts.
size_vector <- c("S", "M", "L", "M", "S", "XL", "L", "S", "M")

#' Note that the levels, by default, are given by the order of appearance in the
#' data.
#'
#' Create a factor with specified levels
size_factor <- factor(size_vector)

#' Display the factor
print(size_factor)

#' The levels of the factor are automatically determined based on the unique
#' values in the data. In this case, the levels are "L", "M", "S", and "XL".
#' This is the default behavior of the `factor()` function. However, we can
#' specify the levels explicitly using the levels argument.
#'
#' Specify the levels of the factor We can specify the levels of a factor using
#' the levels argument of the `factor()` function. This allows us to define the
#' categories and order of the levels. Let's create a factor with specified
#' levels for the size of T-shirts.
size_factor_specified <- factor(size_vector, levels = c("S", "M", "L", "XL"))

#' Display the factor with specified levels
print(size_factor_specified)

#' The levels of the factor are now explicitly defined as "S", "M", "L", and
#' "XL".
#'
#' There is, however, a final step to improve the factor representation. We can
#' create an ordered factor to specify the order of the levels. This is useful
#' when the categories have a natural order, such as sizes or ratings. This is
#' also useful for statistical modeling and visualization.
#'
#' Create an ordered factor We can create an ordered factor by setting the
#' ordered argument to `TRUE` in the `factor()` function. This specifies that
#' the levels have a natural order.
#'
#' Let's create an ordered factor for the size of T-shirts.
size_factor_ordered <- factor(size_vector,
  levels = c("S", "M", "L", "XL"),
  ordered = TRUE
)

#' Display the ordered factor
print(size_factor_ordered)

#' Another syntax to create an ordered factor is to use the ordered() function.
#' This function allows us to create an ordered factor directly.
#'
#' Create an ordered factor using the ordered() function
size_factor_ordered <- ordered(size_vector, levels = c("S", "M", "L", "XL"))

#' Display the ordered factor
print(size_factor_ordered)

#' The ordered factor specifies that the levels have a natural order. This is
#' useful for representing categorical data with an inherent order, such as
#' sizes or ratings.
#'
#' Here is an example of how ordered factors can be useful in practice. Let's
#' say we have a dataset of T-shirt sizes and we want to sort them in ascending
#' order.

#' Sort the ordered factor
sorted_size_factor <- sort(size_factor_ordered)

#' Display the sorted factor
print(sorted_size_factor)

#' Or perhaps we want to index a subset of the data based on the order of the
#' levels using logical vectors.
#'
#' Index the ordered factor using logical vectors This will return the T-shirt
#' sizes that are greater than "S" and less than "XL".
subset_size_factor <- size_factor_ordered[size_factor_ordered > "S" &
  size_factor_ordered < "XL"]

#' Display the subset of the ordered factor
print(subset_size_factor)

#' As a final example, let us consider the implication for plotting data.
#' Ordered factors can be useful for creating ordered bar plots or box plots.
#' And failing to specify the order can lead to misleading visualizations. Let's
#' create a bar plot of the T-shirt sizes to illustrate this point.
#'
#' Create a bar plot of the ordered factor We can use the `barplot()` function
#' to create a bar plot of the ordered factor.
#+ barplot_with_order
barplot(
  table(size_factor_ordered),
  main = "T-Shirt Sizes",
  xlab = "Size",
  ylab = "Frequency"
)

#' Here is an example what the bar plot would look like if the factor was not
#' ordered. Let's create a bar plot of the factor without specifying the order.
#'
#' Create a bar plot of the factor without specifying the order
#+ barplot_without_order
barplot(table(size_factor),
  main = "T-Shirt Sizes",
  xlab = "Size",
  ylab = "Frequency"
)

#' The bar plot without the order specified does not reflect the natural order
#' of the sizes. This can lead to misleading visualizations and
#' misinterpretations of the data.
#'
#' Factors are a powerful data structure in R for working with categorical
#' variables. They allow us to represent and manipulate categorical data
#' efficiently.
#'
#' That's it for this lecture! In the next lecture, we will learn about control
#' structures in R.
#'
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
