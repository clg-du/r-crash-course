# Lecture 9: Functions in R
2024-08-27

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


In this lecture, we will learn about functions in R.

## Functions in R

We have encountered functions in previous lectures, such as the `print()`
function, which is used to display output in R. Functions are blocks of code
that perform a specific task when called or invoked. They are essential for
organizing and reusing code in R.

Functions in R...

- are defined using the `function()` keyword.
- can take zero or more arguments as input.
- can return zero or more values as output.
- can be built-in functions provided by R or user-defined functions created
  by the programmer.
- can have default argument values.
- can have named arguments.
- can be called with or without parentheses.

Let's define a simple function in R!

Define a function that adds two numbers


``` r
add_numbers <- function(a, b) {
  result <- a + b
  return(result)
}
```

The function `add_numbers()` takes two arguments, `a` and `b`, and returns
their sum.

Call the function with arguments `5` and `3`


``` r
result_addition <- add_numbers(5, 3)
```

Display the result


``` r
print(result_addition)
```

```
## [1] 8
```

The `return()` statement is used to return the result of the addition. This
is a simple example of a user-defined function in R.

Beyond user-defined functions, R provides a wide range of built-in functions
that perform various tasks. For example, the `sum()` function calculates the
sum of a vector of numbers.

Calculate the sum of a vector of numbers


``` r
numbers <- c(1, 2, 3, 4, 5)
result_sum <- sum(numbers)
```

Display the result


``` r
print(result_sum)
```

```
## [1] 15
```

The `sum()` function is a built-in function in R that calculates the sum of a
vector of numbers. We create a vector of numbers using the `c()` function and
store it in the variable numbers. We call the `sum()` function with the
vector of numbers as an argument and store the result in the variable
`result_sum`. This demonstrates how built-in functions can be used to perform
common tasks in R.

But it is impossible to know what every function does just by looking at its
name, right? That's where the `help()` function comes in handy!


``` r
help(sum)
```

It can also be called with a question mark


``` r
? sum
```

The `help()` function provides information about a specific function in R. We
call the `help()` function with the `sum()` function as an argument to get
information about the `sum()` function. The help page for the `sum()`
function provides a description of the function, its usage, arguments, and
examples. This is a useful way to learn more about built-in functions and how
to use them in R. You can also use the question mark `?` before the function
name to get the same information.

Pro tip is to scroll down to the examples section of the help page for
practical examples of how to use the function. That is a "quick and dirty"
way to learn how to use a function without reading the entire documentation.

Functions in R can have default argument values, which are used when an
argument is not provided by the user. This allows functions to be more
flexible and easier to use.

Define a function with default argument values


``` r
greet_person <- function(name = "friend") {
  message <- paste("Hello,", name, "!")
  return(message)
}
```

Note here that `paste()` is a function that concatenates strings together. So
we have nested functions here, which is a common practice in R.

Call the function without an argument


``` r
result_greeting <- greet_person()
```

Display the result


``` r
print(result_greeting)
```

```
## [1] "Hello, friend !"
```

Call the function with an argument


``` r
result_greeting <- greet_person("Alice")
```

Display the result


``` r
print(result_greeting)
```

```
## [1] "Hello, Alice !"
```

The `greet_person()` function is defined with a default argument value of
`"friend"`. If no argument is provided, the function greets the user as
`"friend"`. We call the `greet_person()` function without an argument and
store the result in the variable `result_greeting`. The function greets the
user as `"friend"` and returns the greeting message. We call the
`greet_person()` function with the argument `"Alice"` and store the result in
the variable `result_greeting`. The function greets the user as `"Alice"` and
returns the greeting message. This demonstrates how default argument values
can be used to make functions more flexible and user-friendly.

Functions in R can also have named arguments, which allow arguments to be
passed in any order by specifying the argument name.

Define a function with named arguments


``` r
calculate_area <- function(length = 1, width = 1) {
  area <- length * width
  return(area)
}
```

Call the function with named arguments


``` r
result_area <- calculate_area(width = 5, length = 3)
```

Display the result


``` r
print(result_area)
```

```
## [1] 15
```

The `calculate_area()` function is defined with named arguments length and
width. This allows the arguments to be passed in any order by specifying the
argument name. We reversed the order of the arguments when calling the
function, and it still works as expected.

If we already know the order of the arguments, we can still call the function
without specifying the argument names.

Call the function without specifying argument names


``` r
result_area <- calculate_area(3, 5)
```

Display the result


``` r
print(result_area)
```

```
## [1] 15
```

It is then important to know the order of the arguments when calling the
function without specifying the argument names. Otherwise the function may
not work as expected.

Many programmers can get by with only returning a single value from a
function. But eventually one may want to return multiple values from a
function. This can be done by returning a list, which can store multiple
objects of different types! The list in of itself is a single object that can
store multiple objects, which is a neat trick to return multiple values from
a function.

Define a function that returns multiple values


``` r
calculate_circle <- function(radius) {
  area <- pi * radius^2
  circumference <- 2 * pi * radius
  return(list(area = area, circumference = circumference))
}
```

Call the function with a radius of `5`


``` r
result_circle <- calculate_circle(5)
```

Display the result


``` r
print(result_circle)
```

```
## $area
## [1] 78.53982
## 
## $circumference
## [1] 31.41593
```

The `calculate_circle()` function calculates the area and circumference of a
circle given its radius. The function returns a list containing the area and
circumference as named elements. We call the `calculate_circle()` function
with a radius of `5` and store the result in the variable result_circle. The
result is a list containing the area and circumference of the circle, which
can be accessed by their names.

It is therefore possible to access individual list elements using the double
square brackets `[[]]` or the dollar sign `$`.
Access the area of the circle


``` r
print(result_circle$area)
```

```
## [1] 78.53982
```

Access the circumference of the circle


``` r
print(result_circle$circumference)
```

```
## [1] 31.41593
```

This is a powerful feature of R that allows functions to return multiple
values in a structured way.

That's it for this lecture on functions in R! A bit longer than the previous
ones, but functions are a fundamental concept in programming. Functions are
an essential part of programming in R, and understanding how to define and
use functions is key to writing efficient and reusable code.

In the next lecture, we will learn about indexing using logical vectors in R.


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

