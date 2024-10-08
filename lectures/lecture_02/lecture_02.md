# Lecture 2: Objects, Data Types, and Variables in R
2024-08-31

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


In this lecture, we will learn about objects, data types, and variables in R.

Objects are the basic building blocks of R, and they can store data,
functions, or other objects. R has several built-in data types, including
numeric, character, logical, integer, and complex.

Variables...

- are used to store objects in R, and they can be assigned using the
  assignment operator `<-`. (or `=`, but `<-` is preferred!)
- in R are case-sensitive, so `myVar` is not the same as `myvar`.
- have names in R which can contain letters, numbers, underscores, and dots,
  but they cannot start with a number.
- can be assigned to objects, data, functions, or other variables.

Let's create some variables in R!

Create a numeric variable


``` r
my_num <- 42
```

Create a character variable


``` r
my_char <- "Hello, World!"
```

Create a logical variable


``` r
my_logical <- TRUE
```

Create an integer variable

Note: In R, integers are specified by adding an `L` to the end of the number
(`L` stands for "long integer"). This tells R to treat the number as an
integer rather than a numeric value.


``` r
my_int <- 42L
```

Create a complex variable

Note: In R, complex numbers are specified using the `i` suffix. The real part
is separated from the imaginary part by a `+` sign. We won't be using complex
numbers at all in this course, but it's good to know they exist!


``` r
my_complex <- 3 + 4i
```

Display the values of the variables


``` r
print(my_num)
```

```
## [1] 42
```

``` r
print(my_char)
```

```
## [1] "Hello, World!"
```

``` r
print(my_logical)
```

```
## [1] TRUE
```

``` r
print(my_int)
```

```
## [1] 42
```

``` r
print(my_complex)
```

```
## [1] 3+4i
```

## Data Types

R has several built-in data types, including:

- Numeric: Represents real numbers (e.g., 3.14).
- Character: Represents text data (e.g., "Hello, World!").
- Logical: Represents boolean values (`TRUE` or `FALSE`).
- Integer: Represents whole numbers (e.g., 42L).
- Complex: Represents complex numbers (e.g., 3 + 4i).

Let's check the data types of the variables we created earlier.

Note: The `class` function is used to check the data type of an object in R.
It returns the class or data type of the object.


``` r
class(my_num)
```

```
## [1] "numeric"
```

``` r
class(my_char)
```

```
## [1] "character"
```

``` r
class(my_logical)
```

```
## [1] "logical"
```

``` r
class(my_int)
```

```
## [1] "integer"
```

``` r
class(my_complex)
```

```
## [1] "complex"
```

Note: The `typeof` function is used to check the internal type of an object
in R. It returns the internal type of the object. For example, numeric,
character, logical, integer, etc.


``` r
typeof(my_num)
```

```
## [1] "double"
```

``` r
typeof(my_char)
```

```
## [1] "character"
```

``` r
typeof(my_logical)
```

```
## [1] "logical"
```

``` r
typeof(my_int)
```

```
## [1] "integer"
```

``` r
typeof(my_complex)
```

```
## [1] "complex"
```

Note: The `mode` function is used to check the storage mode of an object in
R. It returns the storage mode of the object. For example, numeric,
character, logical, integer, etc.


``` r
mode(my_num)
```

```
## [1] "numeric"
```

``` r
mode(my_char)
```

```
## [1] "character"
```

``` r
mode(my_logical)
```

```
## [1] "logical"
```

``` r
mode(my_int)
```

```
## [1] "numeric"
```

``` r
mode(my_complex)
```

```
## [1] "complex"
```

Note: The `is.numeric` function is used to check if an object is of the
numeric data type. It returns `TRUE` if the object is numeric and `FALSE`
otherwise. This is useful when you want to check if an object is numeric
before performing numeric operations on it (e.g., addition, subtraction,
multiplication, division).


``` r
is.numeric(my_num)
```

```
## [1] TRUE
```

``` r
is.numeric(my_char)
```

```
## [1] FALSE
```

``` r
is.numeric(my_logical)
```

```
## [1] FALSE
```

``` r
is.numeric(my_int)
```

```
## [1] TRUE
```

``` r
is.numeric(my_complex)
```

```
## [1] FALSE
```

Note: The `is.character` function is used to check if an object is of the
character data type. It returns `TRUE` if the object is character and `FALSE`
otherwise.


``` r
is.character(my_num)
```

```
## [1] FALSE
```

``` r
is.character(my_char)
```

```
## [1] TRUE
```

``` r
is.character(my_logical)
```

```
## [1] FALSE
```

``` r
is.character(my_int)
```

```
## [1] FALSE
```

``` r
is.character(my_complex)
```

```
## [1] FALSE
```

Note: The `is.logical` function is used to check if an object is of the
logical data type. It returns `TRUE` if the object is logical and `FALSE`
otherwise. This is useful when you want to check if an object is logical
before performing logical operations on it (e.g., AND, OR, NOT).


``` r
is.logical(my_num)
```

```
## [1] FALSE
```

``` r
is.logical(my_char)
```

```
## [1] FALSE
```

``` r
is.logical(my_logical)
```

```
## [1] TRUE
```

``` r
is.logical(my_int)
```

```
## [1] FALSE
```

``` r
is.logical(my_complex)
```

```
## [1] FALSE
```

That's it for this example! In the next lecture, we will learn about
arithmetic operations in R.


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

