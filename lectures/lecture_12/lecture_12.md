# Lecture 12: Control Structures in R
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


In this lecture, we will learn about control structures in R.

Control structures are used to control the flow of execution in a program.
They allow us to make decisions, repeat code, and perform different actions
based on conditions.

There are three main types of control structures in R:

- Conditional statements (if-else)
- Loops (`for` and `while` loops)
- Functions (user-defined functions)

We have already covered functions in a previous lecture, so in this lecture,
we will focus on conditional statements and loops.

## Conditional Statements (if-else)

Conditional statements allow us to execute different blocks of code based on
specified conditions.

The basic syntax of an if-else statement in R is as follows:



``` r
if (condition) {
  # code block to be executed if the condition is TRUE
} else {
  # code block to be executed if the condition is FALSE
}
```

The condition is a logical expression that evaluates to `TRUE` or `FALSE`.

Let's look at an example of an if-else statement in R:

Define a variable


``` r
x <- 5
```

Check if x is greater than 3


``` r
if (x > 3) {
  print("x is greater than 3")
} else {
  print("x is not greater than 3")
}
```

```
## [1] "x is greater than 3"
```

In this example, we define a variable `x` with the value `5`. We use an
if-else statement to check if `x` is greater than `3`. If the condition `x >
3` is `TRUE`, the message `"x is greater than 3"` is printed.

If the condition is `FALSE`, the code block inside the else statement is
executed, and the message `"x is not greater than 3"` is printed.

There is a variant of the if-else statement called the if-else-if ladder,
which allows us to test multiple conditions in sequence.

The syntax of an if-else-if ladder in R is as follows:



``` r
if (condition1) {
  # code block to be executed if condition1 is TRUE
} else if (condition2) {
  # code block to be executed if condition1 is FALSE and condition2 is TRUE
} else {
  # code block to be executed if all conditions are FALSE
}
```

Let's look at an example of an if-else-if ladder in R:

Define a variable


``` r
y <- 10
```

Check if `y` is less than `5`, between `5` and `10`, or greater than `10`


``` r
if (y < 5) {
  print("y is less than 5")
} else if (y >= 5 & y <= 10) {
  print("y is between 5 and 10")
} else {
  print("y is greater than 10")
}
```

```
## [1] "y is between 5 and 10"
```

In this example, we define a variable `y` with the value `10`. We use an
if-else-if ladder to check if `y` is less than `5`, between `5` and `10`, or
greater than `10`. Depending on the value of `y`, the corresponding message
is printed.

A less syntax heavy way to write the above code is to use the `ifelse()`
function.

The `ifelse()` function is a vectorized version of the if-else statement that
can be used to apply conditions to entire vectors.

The syntax of the `ifelse()` function in R is as follows:



``` r
result <- ifelse(condition, value_if_true, value_if_false)
```

Let's look at an example of the `ifelse()` function in R:
Define a vector


``` r
numbers <- c(1, 2, 3, 4, 5)
```

Apply a condition to the vector using `ifelse()`


``` r
result <- ifelse(numbers > 3, "greater than 3", "less than or equal to 3")
```

Display the result


``` r
print(result)
```

```
## [1] "less than or equal to 3" "less than or equal to 3"
## [3] "less than or equal to 3" "greater than 3"         
## [5] "greater than 3"
```

Finally, there is a shorthand version of the if-else statement called the
ternary operator, which is useful for simple conditional assignments.

The syntax of the ternary operator in R is as follows:


``` r
result <- if (condition) value_if_true else value_if_false
```

Let's look at an example of the ternary operator in R:

Define a variable


``` r
z <- 7
```

Assign a value based on a condition using the ternary operator


``` r
result <- if (z > 5)
  "z is greater than 5"
else
  "z is not greater than 5"
```

```
## Error: <text>:3:1: unexpected 'else'
## 2:   "z is greater than 5"
## 3: else
##    ^
```

Display the result


``` r
print(result)
```

```
## [1] "less than or equal to 3" "less than or equal to 3"
## [3] "less than or equal to 3" "greater than 3"         
## [5] "greater than 3"
```

In this example, we define a variable `z` with the value `7`. We use the
ternary operator to assign a value to the variable result based on the
condition `z > 5`. If the condition is `TRUE`, the value `"z is greater than
5"` is assigned to result. If the condition is `FALSE`, the value `"z is not
greater than 5"` is assigned to result.

## Loops (for, while)

Loops are used to repeat a block of code multiple times.

There are two main types of loops in R: `for` loops and `while` loops.

### `for` Loops

`for` loops are used to iterate over a sequence of values.

The basic syntax of a `for` loop in R is as follows:



``` r
for (variable in sequence) {
  # code block to be executed for each value of the variable
}
```

The variable takes on each value in the sequence, and the code block is
executed for each value.

Let's look at an example of a `for` loop in R:

Iterate over a sequence of numbers


``` r
for (i in 1:5) {
  print(i)
}
```

```
## [1] 1
## [1] 2
## [1] 3
## [1] 4
## [1] 5
```

In this example, we use a `for` loop to iterate over a sequence of numbers
from `1` to `5`. For each value of `i` in the sequence, the value of `i` is
printed.

### `while` Loops

`while` loops are used to repeat a block of code as long as a specified
condition is `TRUE`.

The basic syntax of a `while` loop in R is as follows:


``` r
while (condition) {
  #' code block to be executed as long as the condition is TRUE
}
```

The code block is executed repeatedly as long as the condition is `TRUE`.

Let's look at an example of a `while` loop in R:

Define a variable


``` r
j <- 1
```

Repeat a block of code until `j` is greater than `5`


``` r
while (j <= 5) {
  print(j)
  j <- j + 1
}
```

```
## [1] 1
## [1] 2
## [1] 3
## [1] 4
## [1] 5
```

In this example, we define a variable `j` with the value `1`. We use a
`while` loop to repeat a block of code until `j` is greater than `5`. For
each iteration of the loop, the value of `j` is printed, and `j` is
incremented by `1`. In Python, shorthand operators are used to perform an
arithmetic operation and update a variable in a single step. Instead we need
to use the following syntax in R to iterate a variable and update it:


``` r
x <- 5 
x <- x + 1
```

while in Python, one could write:



``` r
x = 5 
x += 1
```

This is a simple example of a `while` loop in R.

## Conclusion

In this lecture, we learned about control structures in R, including
conditional statements (if-else), `for` loops, and `while` loops. These
control structures are essential for controlling the flow of execution in a
program and performing different actions based on conditions. By using
conditional statements and loops, we can make our code more flexible and
powerful, allowing us to solve a wide range of problems in R.

That's it for this lecture! In the next lecture, we will work with a
real-world dataset and apply what we have learned so far in R.


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

