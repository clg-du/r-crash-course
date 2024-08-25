# Lecture 8: Data Frames in R
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


In this lecture, we will learn about data frames in R.

## Data Frames in R

Data frames are a fundamental data structure in R that allow us to store and
manipulate tabular data. They are similar to matrices, but with additional
features that make them more flexible and powerful.

Data frames...

- are two-dimensional arrays in R that can store different types of data.
- are created using the `data.frame()` function, which takes named vectors as
  arguments.
- can have columns of different types (e.g., numeric, character, logical).
  This differs from matrices, which can only store elements of the same type.
- can be indexed using row and column indices, as well as column names.
- are commonly used to represent datasets in R.

Let's create a data frame in R!

Create a data frame with named vectors The `data.frame()` function takes
named vectors as arguments. Each named vector becomes a column in the data
frame. We will discuss functions and arguments in more detail in the next
lecture. For now, focus on understanding how to create a data frame in R.


``` r
my_data_frame <- data.frame(
  name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  age = c(25, 30, 35, 40, 45),
  employed = c(TRUE, FALSE, TRUE, FALSE, TRUE)
)
```

Notice how we have created a data frame with three columns: name, age, and
employed. The name column contains character values, the age column contains
numeric values, and the employed column contains logical values. This
demonstrates how data frames can store columns of different types. Also note
that we used named vectors to create the data frame, with the names becoming
the column names.

Display the data frame The numbers in the leftmost column are row indices,
which are automatically assigned by R.


``` r
print(my_data_frame)
```

```
##      name age employed
## 1   Alice  25     TRUE
## 2     Bob  30    FALSE
## 3 Charlie  35     TRUE
## 4   David  40    FALSE
## 5     Eve  45     TRUE
```

It is possible to assign row names


``` r
rownames(my_data_frame) <- c("row_1", "row_2", "row_3", "row_4", "row_5")
print(my_data_frame)
```

```
##          name age employed
## row_1   Alice  25     TRUE
## row_2     Bob  30    FALSE
## row_3 Charlie  35     TRUE
## row_4   David  40    FALSE
## row_5     Eve  45     TRUE
```

Let's reset the row names for now


``` r
rownames(my_data_frame) <- NULL
```

Accessing elements of a data frame

Elements of a data frame can be accessed using row and column indices, as
well as column names. We can use the square brackets `[]` to access elements
of a data frame. This is analogous to how we access elements of matrices.

Access the element in the first row and second column


``` r
print(my_data_frame[1, 2])
```

```
## [1] 25
```

Access the element in the second row and third column


``` r
print(my_data_frame[2, 3])
```

```
## [1] FALSE
```

Accessing entire rows or columns of a data frame is similar to accessing
elements of a matrix. I refer you to the previous lecture for more
information on this topic, and we will not repeat the examples here.
We can also change column names


``` r
colnames(my_data_frame) <- c("full_name", "years", "is_employed")
print(my_data_frame)
```

```
##   full_name years is_employed
## 1     Alice    25        TRUE
## 2       Bob    30       FALSE
## 3   Charlie    35        TRUE
## 4     David    40       FALSE
## 5       Eve    45        TRUE
```

We can also add new columns to a data frame For example, let's add a new
column called `height` to the data frame. The new column will contain numeric
values representing the height of each individual. We can add a new column to
a data frame by assigning a vector of values to a new column name. The length
of the vector must match the number of rows in the data frame. The `$` sign
is used to access columns in a data frame.


``` r
my_data_frame$height <- c(160, 170, 180, 190, 200)
```

To see where the `$` sign comes from, let's print the structure of the data
frame The structure of the data frame shows the names of the columns and
their types.


``` r
print(str(my_data_frame))
```

```
## 'data.frame':	5 obs. of  4 variables:
##  $ full_name  : chr  "Alice" "Bob" "Charlie" "David" ...
##  $ years      : num  25 30 35 40 45
##  $ is_employed: logi  TRUE FALSE TRUE FALSE TRUE
##  $ height     : num  160 170 180 190 200
## NULL
```

We can also summarize the data frame The `summary()` function provides a
summary of the data frame, including the number of observations, the number
of missing values, and the distribution of values for each column.


``` r
summary(my_data_frame)
```

```
##   full_name             years    is_employed         height   
##  Length:5           Min.   :25   Mode :logical   Min.   :160  
##  Class :character   1st Qu.:30   FALSE:2         1st Qu.:170  
##  Mode  :character   Median :35   TRUE :3         Median :180  
##                     Mean   :35                   Mean   :180  
##                     3rd Qu.:40                   3rd Qu.:190  
##                     Max.   :45                   Max.   :200
```

That's it for this example! In the next lecture, we will learn about
functions and arguments in R.


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

