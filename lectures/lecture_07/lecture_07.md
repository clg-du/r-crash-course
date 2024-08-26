# Lecture 7: Matrices in R
2024-08-26

<!--html_preserve--><details>
  <summary>Lecture index</summary>

- [Lecture 1: Introduction to R](/lectures/lecture_01/lecture_01.md)
- [Lecture 2: Objects, Data Types, and Variables in R](/lectures/lecture_02/lecture_02.md)
- [Lecture 3: Arithmetic Operations in R](/lectures/lecture_03/lecture_03.md)
- [Lecture 4: Comparison and Logical Operators in R](/lectures/lecture_04/lecture_04.md)
- [Lecture 5: Vectors in R](/lectures/lecture_05/lecture_05.md)
- [Lecture 6: List in R](/lectures/lecture_06/lecture_06.md)
- [Lecture 7: Matrices in R](/lectures/lecture_07/lecture_07.md)
- [Lecture 8: Data Frames in R](/lectures/lecture_08/lecture_08.md)
- [Lecture 9: Functions in R](/lectures/lecture_09/lecture_09.md)
- [Lecture 10: Indexing using Logical Vectors in R](/lectures/lecture_10/lecture_10.md)
- [Lecture 11: Factors in R](/lectures/lecture_11/lecture_11.md)
- [Lecture 12: Control Structures in R](/lectures/lecture_12/lecture_12.md)
- [Lecture 13: A real-world example of using R for data analysis](/lectures/lecture_13/lecture_13.md)

</details><!--/html_preserve--><!--html_preserve--><details>
  <summary>Exercise index</summary>

  - [Exercise 1: Introduction to R](/exercises/exercise_01/exercise_01.md)
  - [Exercise 1 Solutions: Introduction to R](/exercises/exercise_01/exercise_01_solutions.md)
  - [Exercise 2: Objects, Data Types, and Variables in R](/exercises/exercise_02/exercise_02.md)
  - [Exercise 2 Solutions: Objects, Data Types, and Variables in R](/exercises/exercise_02/exercise_02_solutions.md)
  - [Exercise 3: Arithmetic Operations in R](/exercises/exercise_03/exercise_03.md)
  - [Exercise 3 Solutions: Arithmetic Operations in R](/exercises/exercise_03/exercise_03_solutions.md)
  - [Exercise 4: Comparison and Logical Operators in R](/exercises/exercise_04/exercise_04.md)
  - [Exercise 4 Solutions: Comparison and Logical Operators in R](/exercises/exercise_04/exercise_04_solutions.md)
  - [Exercise 5: Vectors in R](/exercises/exercise_05/exercise_05.md)
  - [Exercise 5 Solutions: Vectors in R](/exercises/exercise_05/exercise_05_solutions.md)
  - [Exercise 6: List in R](/exercises/exercise_06/exercise_06.md)
  - [Exercise 6 Solutions: List in R](/exercises/exercise_06/exercise_06_solutions.md)
  - [Exercise 7: Matrices in R](/exercises/exercise_07/exercise_07.md)
  - [Exercise 7 Solutions: Matrices in R](/exercises/exercise_07/exercise_07_solutions.md)
  - [Exercise 8: Data Frames in R](/exercises/exercise_08/exercise_08.md)
  - [Exercise 8 Solutions: Data Frames in R](/exercises/exercise_08/exercise_08_solutions.md)
  - [Exercise 9: Functions in R](/exercises/exercise_09/exercise_09.md)
  - [Exercise 9 Solutions: Functions in R](/exercises/exercise_09/exercise_09_solutions.md)
  - [Exercise 10: Indexing using Logical Vectors in R](/exercises/exercise_10/exercise_10.md)
  - [Exercise 10 Solutions: Indexing using Logical Vectors in R](/exercises/exercise_10/exercise_10_solutions.md)
  - [Exercise 11: Factors in R](/exercises/exercise_11/exercise_11.md)
  - [Exercise 11 Solutions: Factors in R](/exercises/exercise_11/exercise_11_solutions.md)
  - [Exercise 12: Control Structures in R](/exercises/exercise_12/exercise_12.md)
  - [Exercise 12 Solutions: Control Structures in R](/exercises/exercise_12/exercise_12_solutions.md)
  - [Exercise 13: A real-world example of using R for data analysis](/exercises/exercise_13/exercise_13.md)
  - [Exercise 13 Solutions: A real-world example of using R for data
  analysis](/exercises/exercise_13/exercise_13_solutions.md)

</details><!--/html_preserve-->


In this lecture, we will learn about matrices in R.

## Matrices in R

Matrices...

- are two-dimensional arrays in R that can store numeric, character, or
  logical values.
- are created using the `matrix()` function, which takes data, the number of
  rows, and the number of columns as arguments.
- can be indexed using row and column indices.
- can be used in mathematical operations and functions.
- are an essential data structure in R for working with two-dimensional data.

Please note that matrices can only store elements of the same type, much like
vectors!

Let's create a matrix in R!

Create a matrix with numeric values The `matrix()` function takes the data,
the number of rows, and the number of columns as arguments. We will discuss
functions and arguments in more detail in a later lecture. For now, focus on
understanding how to create a matrix in R.


``` r
my_matrix <- matrix(
    data = c(1, 2, 3, 4, 5, 6),
    nrow = 2,
    ncol = 3
)
```

Display the matrix


``` r
print(my_matrix)
```

```
##      [,1] [,2] [,3]
## [1,]    1    3    5
## [2,]    2    4    6
```

Notice how the matrix is displayed with rows and columns. The elements are
labeled with their row and column indices. This makes it easy to see the
structure of the matrix and the values of the elements.

## Accessing elements of a matrix

Elements of a matrix can be accessed using row and column indices. The row
index comes before the comma, and the column index comes after the comma. We
can also use the square brackets `[]` to access elements of a matrix.

Access the element in the first row and second column


``` r
print(my_matrix[1, 2])
```

```
## [1] 3
```

Access the element in the second row and third column


``` r
print(my_matrix[2, 3])
```

```
## [1] 6
```

Access an entire row or column of a matrix For example, to access the first
row of the matrix, we can use the following syntax since we want all columns,
we use a comma and an empty space after the row index.


``` r
print(my_matrix[1, ])
```

```
## [1] 1 3 5
```

To access the second column of the matrix, we can use the following syntax
since we want all rows, we use an empty space and a comma before the column
index.


``` r
print(my_matrix[, 2])
```

```
## [1] 3 4
```

We can use a colon `:` to select a range of row or column indices. For
example, to select the first two rows of the matrix, we can use the following
syntax


``` r
print(my_matrix[1:2, ])
```

```
##      [,1] [,2] [,3]
## [1,]    1    3    5
## [2,]    2    4    6
```

Notice how the indexing is displayed in the output. The selected rows and
columns are highlighted in the output to make it clear which elements are
being accessed. [1,] indicates the first row, and [2,] indicates the second
row, and so on. The columns are labeled with their indices. [,1] indicates
the first column, and [,2] indicates the second column, and so on.

To select the last two columns of the matrix, we can use the following syntax


``` r
print(my_matrix[, 2:3])
```

```
##      [,1] [,2]
## [1,]    3    5
## [2,]    4    6
```

We can also use negative indices to exclude rows or columns from a matrix.
For example, to exclude the first row of the matrix, we can use the following
syntax


``` r
print(my_matrix[-1, ])
```

```
## [1] 2 4 6
```

To exclude the last column of the matrix, we can use the following syntax


``` r
print(my_matrix[, -3])
```

```
##      [,1] [,2]
## [1,]    1    3
## [2,]    2    4
```

Matrices can be multiplied using the `%*%` operator. The `%*%` operator
performs matrix multiplication in R. It is somewhat out of the scope of this
lecture, but it is important to know that this operator exists.

Example: Create two matrices for multiplication


``` r
matrix_a <- matrix(
    data = c(1, 2, 3, 4),
    nrow = 2,
    ncol = 2
)
matrix_b <- matrix(
    data = c(5, 6, 7, 8),
    nrow = 2,
    ncol = 2
)
```

Multiply the matrices using the `%*%` operator


``` r
result_matrix_multiplication <- matrix_a %*% matrix_b
```

Display the result of the matrix multiplication


``` r
print(result_matrix_multiplication)
```

```
##      [,1] [,2]
## [1,]   23   31
## [2,]   34   46
```

To understand the result, one needs to understand basic linear algebra
concepts.

That's it for this example! In the next lecture, we will learn about data
frames in R.


<!--html_preserve--><details>
  <summary>Lecture index</summary>

- [Lecture 1: Introduction to R](/lectures/lecture_01/lecture_01.md)
- [Lecture 2: Objects, Data Types, and Variables in R](/lectures/lecture_02/lecture_02.md)
- [Lecture 3: Arithmetic Operations in R](/lectures/lecture_03/lecture_03.md)
- [Lecture 4: Comparison and Logical Operators in R](/lectures/lecture_04/lecture_04.md)
- [Lecture 5: Vectors in R](/lectures/lecture_05/lecture_05.md)
- [Lecture 6: List in R](/lectures/lecture_06/lecture_06.md)
- [Lecture 7: Matrices in R](/lectures/lecture_07/lecture_07.md)
- [Lecture 8: Data Frames in R](/lectures/lecture_08/lecture_08.md)
- [Lecture 9: Functions in R](/lectures/lecture_09/lecture_09.md)
- [Lecture 10: Indexing using Logical Vectors in R](/lectures/lecture_10/lecture_10.md)
- [Lecture 11: Factors in R](/lectures/lecture_11/lecture_11.md)
- [Lecture 12: Control Structures in R](/lectures/lecture_12/lecture_12.md)
- [Lecture 13: A real-world example of using R for data analysis](/lectures/lecture_13/lecture_13.md)

</details><!--/html_preserve--><!--html_preserve--><details>
  <summary>Exercise index</summary>

  - [Exercise 1: Introduction to R](/exercises/exercise_01/exercise_01.md)
  - [Exercise 1 Solutions: Introduction to R](/exercises/exercise_01/exercise_01_solutions.md)
  - [Exercise 2: Objects, Data Types, and Variables in R](/exercises/exercise_02/exercise_02.md)
  - [Exercise 2 Solutions: Objects, Data Types, and Variables in R](/exercises/exercise_02/exercise_02_solutions.md)
  - [Exercise 3: Arithmetic Operations in R](/exercises/exercise_03/exercise_03.md)
  - [Exercise 3 Solutions: Arithmetic Operations in R](/exercises/exercise_03/exercise_03_solutions.md)
  - [Exercise 4: Comparison and Logical Operators in R](/exercises/exercise_04/exercise_04.md)
  - [Exercise 4 Solutions: Comparison and Logical Operators in R](/exercises/exercise_04/exercise_04_solutions.md)
  - [Exercise 5: Vectors in R](/exercises/exercise_05/exercise_05.md)
  - [Exercise 5 Solutions: Vectors in R](/exercises/exercise_05/exercise_05_solutions.md)
  - [Exercise 6: List in R](/exercises/exercise_06/exercise_06.md)
  - [Exercise 6 Solutions: List in R](/exercises/exercise_06/exercise_06_solutions.md)
  - [Exercise 7: Matrices in R](/exercises/exercise_07/exercise_07.md)
  - [Exercise 7 Solutions: Matrices in R](/exercises/exercise_07/exercise_07_solutions.md)
  - [Exercise 8: Data Frames in R](/exercises/exercise_08/exercise_08.md)
  - [Exercise 8 Solutions: Data Frames in R](/exercises/exercise_08/exercise_08_solutions.md)
  - [Exercise 9: Functions in R](/exercises/exercise_09/exercise_09.md)
  - [Exercise 9 Solutions: Functions in R](/exercises/exercise_09/exercise_09_solutions.md)
  - [Exercise 10: Indexing using Logical Vectors in R](/exercises/exercise_10/exercise_10.md)
  - [Exercise 10 Solutions: Indexing using Logical Vectors in R](/exercises/exercise_10/exercise_10_solutions.md)
  - [Exercise 11: Factors in R](/exercises/exercise_11/exercise_11.md)
  - [Exercise 11 Solutions: Factors in R](/exercises/exercise_11/exercise_11_solutions.md)
  - [Exercise 12: Control Structures in R](/exercises/exercise_12/exercise_12.md)
  - [Exercise 12 Solutions: Control Structures in R](/exercises/exercise_12/exercise_12_solutions.md)
  - [Exercise 13: A real-world example of using R for data analysis](/exercises/exercise_13/exercise_13.md)
  - [Exercise 13 Solutions: A real-world example of using R for data
  analysis](/exercises/exercise_13/exercise_13_solutions.md)

</details><!--/html_preserve-->

