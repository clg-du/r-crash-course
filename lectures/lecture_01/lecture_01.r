#' # Lecture 1: Introduction to R
#' `r Sys.Date()`
#+ echo = FALSE
htmltools::includeHTML("../../index_lectures.html")
htmltools::includeHTML("../../index_exercises.html")
#'
#'
#' Here we will learn the basics of the R programming language.
#'
#' ## Comments in R
#'
#' Comments in R...
#'
#' - are preceded by the `#` symbol.
#' - are used to explain the code and make it more readable.
#' - are ignored by the R interpreter.
#' - can be on a line by themselves or at the end of a line of code.
#' - can be used to temporarily disable a line of code.
#' - can be used to document the code.
#' - can be used to make the code more readable.
#'
#' Adding an apostrophe after the `#` symbol, i.e., `#'`, creates a Roxygen
#' comment. Roxygen comments are used to generate documentation for functions
#' and packages. Roxygen comments are used to create documentation for R
#' packages. It is also useful to write comments that can be used to generate
#' markdown documentation, such as the one you are reading now.
#'
#' Here is a simple example of a comment in R:
#'

# This is a comment in R

#'
#' Comments are not executed by the R interpreter and are used to provide
#' additional information about the code.
#'
#' ## Running R code
#'
#' R is an interpreted language, which means that code is executed line by line.
#' You can run each line of code individually in the R console or run the entire
#' script at once.
#'
#' Normally, you would run the entire script or certain sections of the script
#' by highlighting the code and using the "Run" button or the keyboard shortcut
#' `Ctrl + Enter`.
#'
#' To run the entire script, you can use the `source()` function in R. The
#' `source()` function reads and executes an R script file.
#'
#' Functions will be covered in more detail in a later lecture.
#'
#' Here is an example of running an R script using the `source()` function:
#+ eval = FALSE
source("path/to/your/script.R")

#' The source function can be used to run other R scripts from within you
#' current script. The path to the script should be specified in quotes.
#'
#' Paths can be relative or absolute. In this case, the path is relative to the
#' current working directory. Absolute paths start from the root directory of
#' the file system.
#'
#' Here is an example of running an R script using the `source()` function with
#' a absolute path:
#+ eval = FALSE
source("C:/Downloads/script.R")

#' Please note that the path separator for Mac in R is `/` and not `\` as in
#' Windows
#'
#' A way to circumvent the issue of path dependencies is to use R projects. R
#' projects allow you to set a working directory for your project, and all paths
#' will be relative to that directory.
#'
#' To create an R project in RStudio, go to `File -> New Project...` and select
#' `New Directory`. Then select `New Project` and choose the directory where you
#' want to create the project.
#'
#' You can then save your script in the project directory and use relative paths
#' to source other scripts by first setting the working directory to the project
#' directory by opening the project in RStudio, either by double-clicking the
#' `.Rproj` file or by using the `File -> Open Project...` option.
#'
#' In this course there is a `.Rproj` file in the root directory of the course
#' repository called `r-crash-course.Rproj`. It will set the working directory
#' to the root of the course repository.
#'
#' In RStudio, you can run the entire script by clicking the "Source" button in
#' the script editor or by using the keyboard shortcut `Ctrl + Shift + S`.
#'
#' Note: Any recommended keyboard shortcut may vary depending on your operating
#' system, RStudio version, or any other IDE you are using, such as VS Code or
#' Jupyter Notebook, for example.
#'
#' ## Our first `"Hello World!"` program in R
#'
#' This example is a simple R script that prints `"Hello, World!"` to the
#' console. `print()` is a built-in function in R that prints the specified
#' value to the console.
#'
#' R is case-sensitive, so `print` is not the same as `Print`.
#'
#' Print `"Hello, World!"` to the console
print("Hello, World!")

#' Note that the result of the `print()` function is displayed in the console.
#' The console is where the output of R code is displayed.
#'
#' In RStudio, the console is located in the bottom left pane of the IDE,
#' although you can move it to a different location if you prefer.
#'
#' The console is where you can interact with R directly, run code, and see the
#' output of your commands.
#'
#' You can also use the console to perform calculations, test functions, and
#' debug your code.
#'
#' Not everything in R needs to be printed to the console. For example, when you
#' assign a value to a variable, it won't be printed to the console unless you
#' explicitly print it.
#'
#' You can also prompt the user for input using the `readline()` function.
#'
#' Here is an example of prompting the user for input:
#'
#' Prompt the user for their name
#+ eval=FALSE
name <- readline("Enter your name: ")
print(name)

#'
#' In R indentation is not required, but it is recommended for readability. In
#' RStudio you can highlight code and use `Ctrl + Shift + A` to clean up the
#' code and automatically indent it.
#'
#' Here is an example of R being used as a calculator:

# Calculate the sum of two numbers
2 + 3

# Calculate the difference of two numbers
5 - 2

# We will cover more arithmetic operations in a later lecture.

#' ## Packages

#' Packages in R are collections of functions and data sets developed by the
#' community. We can install and load packages in R using the
#' `install.packages()` and `library()` functions.
#'
#' Install the "car" package
#+ eval = FALSE
install.packages("car")

#' Load the `car` package
library(car)

#' The `car` package contains a dataset called `mtcars`. We can access this
#' dataset using the `data()` function.
#'
#' Load the `mtcars` dataset
data(mtcars)

#' Display the first few rows of the `mtcars` dataset
head(mtcars)

#' We can also use the `summary()` function to get a summary of the dataset.
#'
#' Get a summary of the `mtcars` dataset
summary(mtcars)

#' That's it for this example! In the next lecture, we will learn more about
#' objects, data types, and variables in R.
