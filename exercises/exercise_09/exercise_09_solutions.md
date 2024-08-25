# Exercise 9 Solutions: Functions in R
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



## Task 1: Creating User-Defined Functions

Create the following user-defined functions:

1. Create a function called `calculate_area` that takes two arguments,
   `length` and `width`, and returns the area of a rectangle (length *
   width).

2. Create a function called `calculate_volume` that takes three arguments,
   `length`, `width`, and `height`, and returns the volume of a rectangular
   prism (length * width * height).

Your code here:


``` r
calculate_area <- function(length, width) {
    area <- length * width
    return(area)
}

calculate_volume <- function(length, width, height) {
    volume <- length * width * height
    return(volume)
}
```

## Task 2: Calling User-Defined Functions

Use the user-defined functions to perform the following operations:

1. Call the `calculate_area` function with `length = 5` and `width = 3` and
   assign the result to a variable called `area`.

2. Call the `calculate_volume` function with `length = 4`, `width = 2`, and
   `height = 6` and assign the result to a variable called `volume`.

Your code here:


``` r
area <- calculate_area(length = 5, width = 3)
volume <- calculate_volume(length = 4, width = 2, height = 6)
```

## Task 3: Built-in Functions vs User-Defined Functions

Compare the results of the built-in `sum` function and the user-defined
`calculate_area` function.

1. Create a vector of numbers: `numbers <- c(1, 2, 3, 4, 5)`.

2. Use the `sum` function to calculate the sum of the numbers and assign the
   result to a variable called `sum_result`.

3. Use the `calculate_area` function with `length = 2` and `width = 3` to
   calculate the area of a rectangle and assign the result to a variable
   called `area_result`.

Your code here:


``` r
numbers <- c(1, 2, 3, 4, 5)
sum_result <- sum(numbers)
area_result <- calculate_area(length = 2, width = 3)
```

## Task 4: Display the Results

Print the values of all the variables created in Task 2 and Task 3.

Your code here:


``` r
print(area)
```

```
## [1] 15
```

``` r
print(volume)
```

```
## [1] 48
```

``` r
print(sum_result)
```

```
## [1] 15
```

``` r
print(area_result)
```

```
## [1] 6
```

That's it for Exercise 9! Great job!



``` r
htmltools::includeHTML("../../index_lectures.html")
```

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

</details><!--/html_preserve-->

``` r
htmltools::includeHTML("../../index_exercises.html")
```

<!--html_preserve--><details>
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

