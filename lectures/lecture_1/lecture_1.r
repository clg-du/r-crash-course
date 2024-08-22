
# Lecture 1: Introduction to R

# Here we will learn the basics of R programming language.

# Comments in R... 
# ...are preceded by the "#" symbol. 
# ...are used to explain the code and make it more readable.
# ...are ignored by the R interpreter. 
# ...can be on a line by themselves or at the end of a line of code.
# ...can be used to temporarily disable a line of code.
# ...can be used to document the code.
# ...can be used to make the code more readable.

# This example is a simple R script that prints "Hello, World!" to the console.
# print() is a built-in function in R that prints the specified value to the console.
# R is case-sensitive, so "print" is not the same as "Print".

# Print "Hello, World!" to the console
print("Hello, World!")

# In R indentation is not required, but it is recommended for readability.
# In RStudio you can use "Ctrl + Shift + A" to clean up the code and automatically indent it.

# Packages in R are collections of functions and data sets developed by the community.
# We can install and load packages in R using the install.packages() and library() functions.

# Install the "car" package
install.packages("car")

# Load the "car" package
library(car)

# The "car" package contains a dataset called "mtcars".
# We can access this dataset using the data() function.

# Load the "mtcars" dataset
data(mtcars)

# Display the first few rows of the "mtcars" dataset
head(mtcars)

# We can also use the summary() function to get a summary of the dataset.

# Get a summary of the "mtcars" dataset
summary(mtcars)

# That's it for this example! In the next lecture, we will learn more about data types and data structures in R.

