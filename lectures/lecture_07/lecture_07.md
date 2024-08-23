

``` r
# Lecture 7: Matrices in R

# In this lecture, we will learn about matrices in R.

# Matrices...

# - are two-dimensional arrays in R that can store numeric, character, or logical values.
# - are created using the "matrix()" function, which takes data, the number of rows, and the number of columns as arguments.
# - can be indexed using row and column indices.
# - can be used in mathematical operations and functions.
# - are an essential data structure in R for working with two-dimensional data.

# Please note that matrices can only store elements of the same type, much like vectors!

# Let's create a matrix in R!

# Create a matrix with numeric values
# The matrix() function takes the data, the number of rows, and the number of columns as arguments.
# We will discuss functions and arguments in more detail in a later lecture.
# For now, focus on understanding how to create a matrix in R.
my_matrix <- matrix(data = c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)

# Display the matrix
print(my_matrix)
```

```
##      [,1] [,2] [,3]
## [1,]    1    3    5
## [2,]    2    4    6
```

``` r
# Notice how the matrix is displayed with rows and columns.
# The elements are labeled with their row and column indices.
# This makes it easy to see the structure of the matrix and the values of the elements.

# Accessing elements of a matrix

# Elements of a matrix can be accessed using row and column indices.
# The row index comes before the comma, and the column index comes after the comma.
# We can also use the square brackets [] to access elements of a matrix.

# Access the element in the first row and second column
print(my_matrix[1, 2])
```

```
## [1] 3
```

``` r
# Access the element in the second row and third column
print(my_matrix[2, 3])
```

```
## [1] 6
```

``` r
# Access an entire row or column of a matrix
# For example, to access the first row of the matrix, we can use the following syntax
# since we want all columns, we use a comma and an empty space after the row index.
print(my_matrix[1, ])
```

```
## [1] 1 3 5
```

``` r
# To access the second column of the matrix, we can use the following syntax
# since we want all rows, we use an empty space and a comma before the column index.
print(my_matrix[, 2])
```

```
## [1] 3 4
```

``` r
# We can use a colon : to select a range of row or column indices.
# For example, to select the first two rows of the matrix, we can use the following syntax
print(my_matrix[1:2, ])
```

```
##      [,1] [,2] [,3]
## [1,]    1    3    5
## [2,]    2    4    6
```

``` r
# To select the last two columns of the matrix, we can use the following syntax
print(my_matrix[, 2:3])
```

```
##      [,1] [,2]
## [1,]    3    5
## [2,]    4    6
```

``` r
# We can also use negative indices to exclude rows or columns from a matrix.
# For example, to exclude the first row of the matrix, we can use the following syntax
print(my_matrix[-1, ])
```

```
## [1] 2 4 6
```

``` r
# To exclude the last column of the matrix, we can use the following syntax
print(my_matrix[, -3])
```

```
##      [,1] [,2]
## [1,]    1    3
## [2,]    2    4
```

``` r
# Matrices can be multiplied using the %*% operator.
# The %*% operator performs matrix multiplication in R.
# It is somewhat out of the scope of this lecture, but it is important to know that this operator exists.

# Example:
# Create two matrices for multiplication
matrix_a <- matrix(data = c(1, 2, 3, 4), nrow = 2, ncol = 2)
matrix_b <- matrix(data = c(5, 6, 7, 8), nrow = 2, ncol = 2)

# Multiply the matrices using the %*% operator
result_matrix_multiplication <- matrix_a %*% matrix_b

# Display the result of the matrix multiplication
print(result_matrix_multiplication)
```

```
##      [,1] [,2]
## [1,]   23   31
## [2,]   34   46
```

``` r
# To understand the result, one needs to understand basic linear algebra concepts.

# That's it for this example! In the next lecture, we will learn about data frames in R.
```

