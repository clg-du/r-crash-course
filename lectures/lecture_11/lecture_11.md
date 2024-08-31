---
title: My document in a .R file
output:
  github_document: 
    keep_md: yes
---

# Lecture 11: Factors in R
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


In this lecture, we will learn about factors in R.

Factors are used to represent categorical data in R. They are an essential
data structure for working with categorical variables. Factors are created
using the `factor()` function in R.

Let's create a factor in R!

## Creating a vector of categorical data

We can use the `c()` function to create a vector of categorical data. For
example, let's create a vector of fruit names.


``` r
fruit_vector <- c("apple", "banana", "cherry", "apple", "banana", "cherry")
```

Display the vector


``` r
print(fruit_vector)
```

```
## [1] "apple"  "banana" "cherry" "apple"  "banana" "cherry"
```

Create a factor from the vector We can use the `factor()` function to convert
a vector of categorical data into a factor. The `factor()` function takes the
vector of data as an argument.


``` r
fruit_factor <- factor(fruit_vector)
```

Display the factor


``` r
print(fruit_factor)
```

```
## [1] apple  banana cherry apple  banana cherry
## Levels: apple banana cherry
```

Factors are displayed with their levels and corresponding indices. The levels
represent the unique categories in the factor. The indices represent the
position of each element in the factor.

Factors are useful for representing categorical data in R.

Let's explore factors further!

Create a factor with specified levels We can specify the levels of a factor
using the levels argument of the `factor()` function. This allows us to
define the categories and order of the levels. Let's showcase this with a
factor representing the size of T-shirts.


``` r
size_vector <- c("S", "M", "L", "M", "S", "XL", "L", "S", "M")
```

Note that the levels, by default, are given by the order of appearance in the
data.

Create a factor with specified levels


``` r
size_factor <- factor(size_vector)
```

Display the factor


``` r
print(size_factor)
```

```
## [1] S  M  L  M  S  XL L  S  M 
## Levels: L M S XL
```

The levels of the factor are automatically determined based on the unique
values in the data. In this case, the levels are "L", "M", "S", and "XL".
This is the default behavior of the `factor()` function. However, we can
specify the levels explicitly using the levels argument.

Specify the levels of the factor We can specify the levels of a factor using
the levels argument of the `factor()` function. This allows us to define the
categories and order of the levels. Let's create a factor with specified
levels for the size of T-shirts.


``` r
size_factor_specified <- factor(size_vector, levels = c("S", "M", "L", "XL"))
```

Display the factor with specified levels


``` r
print(size_factor_specified)
```

```
## [1] S  M  L  M  S  XL L  S  M 
## Levels: S M L XL
```

The levels of the factor are now explicitly defined as "S", "M", "L", and
"XL".

There is, however, a final step to improve the factor representation. We can
create an ordered factor to specify the order of the levels. This is useful
when the categories have a natural order, such as sizes or ratings. This is
also useful for statistical modeling and visualization.

Create an ordered factor We can create an ordered factor by setting the
ordered argument to `TRUE` in the `factor()` function. This specifies that
the levels have a natural order.

Let's create an ordered factor for the size of T-shirts.


``` r
size_factor_ordered <- factor(size_vector,
  levels = c("S", "M", "L", "XL"),
  ordered = TRUE
)
```

Display the ordered factor


``` r
print(size_factor_ordered)
```

```
## [1] S  M  L  M  S  XL L  S  M 
## Levels: S < M < L < XL
```

Another syntax to create an ordered factor is to use the ordered() function.
This function allows us to create an ordered factor directly.

Create an ordered factor using the ordered() function


``` r
size_factor_ordered <- ordered(size_vector, levels = c("S", "M", "L", "XL"))
```

Display the ordered factor


``` r
print(size_factor_ordered)
```

```
## [1] S  M  L  M  S  XL L  S  M 
## Levels: S < M < L < XL
```

The ordered factor specifies that the levels have a natural order. This is
useful for representing categorical data with an inherent order, such as
sizes or ratings.

Here is an example of how ordered factors can be useful in practice. Let's
say we have a dataset of T-shirt sizes and we want to sort them in ascending
order.
Sort the ordered factor


``` r
sorted_size_factor <- sort(size_factor_ordered)
```

Display the sorted factor


``` r
print(sorted_size_factor)
```

```
## [1] S  S  S  M  M  M  L  L  XL
## Levels: S < M < L < XL
```

Or perhaps we want to index a subset of the data based on the order of the
levels using logical vectors.

Index the ordered factor using logical vectors This will return the T-shirt
sizes that are greater than "S" and less than "XL".


``` r
subset_size_factor <- size_factor_ordered[size_factor_ordered > "S" &
  size_factor_ordered < "XL"]
```

Display the subset of the ordered factor


``` r
print(subset_size_factor)
```

```
## [1] M L M L M
## Levels: S < M < L < XL
```

As a final example, let us consider the implication for plotting data.
Ordered factors can be useful for creating ordered bar plots or box plots.
And failing to specify the order can lead to misleading visualizations. Let's
create a bar plot of the T-shirt sizes to illustrate this point.

Create a bar plot of the ordered factor We can use the `barplot()` function
to create a bar plot of the ordered factor.


``` r
barplot(
  table(size_factor_ordered),
  main = "T-Shirt Sizes",
  xlab = "Size",
  ylab = "Frequency"
)
```

![plot of chunk barplot_with_order](/lectures/lecture_11/figures/barplot_with_order-1.png)

Here is an example what the bar plot would look like if the factor was not
ordered. Let's create a bar plot of the factor without specifying the order.

Create a bar plot of the factor without specifying the order


``` r
barplot(table(size_factor),
  main = "T-Shirt Sizes",
  xlab = "Size",
  ylab = "Frequency"
)
```

![plot of chunk barplot_without_order](/lectures/lecture_11/figures/barplot_without_order-1.png)

The bar plot without the order specified does not reflect the natural order
of the sizes. This can lead to misleading visualizations and
misinterpretations of the data.

Factors are a powerful data structure in R for working with categorical
variables. They allow us to represent and manipulate categorical data
efficiently.

That's it for this lecture! In the next lecture, we will learn about control
structures in R.


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

