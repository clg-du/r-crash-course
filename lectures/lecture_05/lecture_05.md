# Lecture 5: Vectors in R
2024-08-25

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


In this lecture, we will learn about vectors in R. These are essential data
structures in R that allow us to store and manipulate data efficiently.

Later in this course, we will also cover list, matrices and data frames,
which are more complex data structures in R. It is important, however, to
understand vectors before moving on to these more advanced topics.

# Vectors in R

Vectors...

- are one-dimensional arrays in R that can store numeric, character, or
  logical values.
- can be created using the `c()` function, which stands for "combine" or
  "concatenate".
- can be indexed using square brackets `[]`.
- can be of different lengths and types.
- can be used in mathematical operations and functions.

Let's create some vectors in R!

Create a numeric vector


``` r
my_numeric_vector <- c(1, 2, 3, 4, 5)
```

Create a character vector


``` r
my_character_vector <- c("apple", "banana", "cherry", "date", "elderberry")
```

Create a logical vector


``` r
my_logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
```

Display the values of the vectors


``` r
print(my_numeric_vector)
```

```
## [1] 1 2 3 4 5
```

``` r
print(my_character_vector)
```

```
## [1] "apple"      "banana"     "cherry"     "date"       "elderberry"
```

``` r
print(my_logical_vector)
```

```
## [1]  TRUE FALSE  TRUE FALSE  TRUE
```

Indexing vectors in R

We can access individual elements of a vector using square brackets `[]`. The
index of the element we want to access goes inside the square brackets.

Indexing in R starts at 1, not 0 like in some other programming languages
(e.g., Python). We can also use negative indices to exclude elements from the
vector.

Access the first element of the numeric vector


``` r
print(my_numeric_vector[1])
```

```
## [1] 1
```

Access the second element of the character vector


``` r
print(my_character_vector[2])
```

```
## [1] "banana"
```

Access the last element of the logical vector


``` r
print(my_logical_vector[length(my_logical_vector)])
```

```
## [1] TRUE
```

Access multiple elements of a vector We can use a vector of indices inside
the square brackets to access multiple elements at once. For example, to
access the first, third, and fifth elements of a vector, we can use the
following syntax:


``` r
print(my_numeric_vector[c(1, 3, 5)])
```

```
## [1] 1 3 5
```

Note: We use the `c()` function to create a vector of indices.

Exclude elements from a vector We can use negative indices to exclude
elements from a vector. For example, to exclude the second element of a
vector, we can use the following syntax:


``` r
print(my_character_vector[-2])
```

```
## [1] "apple"      "cherry"     "date"       "elderberry"
```

That's it for vectors! Next, we will learn about lists in R.
