# Lecture 6: List in R
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


In this lecture, we will learn about lists in R.

Lists are another essential data structure in R that can store multiple
objects of different types. Unlike vectors, lists can store objects of
different lengths and types in a single container. This makes lists a
versatile and powerful data structure in R.

Lists are created using the `list()` function, which takes an arbitrary
number of arguments. Each argument passed to the `list()` function becomes an
element of the list.

Let's create a list in R!

Create a list with multiple elements of different types


``` r
my_list <- list(c(42, 78, 92), c("Hello, World!", "Hello again, World!"), TRUE, 42L, 3 + 4i)
```

Note that the elements of the list can be of different types and lengths! The
list `my_list` contains a numeric value, a character string, a logical value,
an integer value, and a complex number. This is something that vectors cannot
do, as they require all elements to be of the same type.



``` r
# Display the list `my_list`
print(my_list)
```

```
## [[1]]
## [1] 42 78 92
## 
## [[2]]
## [1] "Hello, World!"       "Hello again, World!"
## 
## [[3]]
## [1] TRUE
## 
## [[4]]
## [1] 42
## 
## [[5]]
## [1] 3+4i
```

Notice how the list is displayed with each element on a separate line. The
elements are labeled with their index in the list (starting from 1). The type
of each element is also displayed. This makes it easy to see the contents of
the list and the types of the elements.

Also, notice that some list elements are actually vectors. This is because a
list can contain any R object, including other lists, vectors, matrices, and
data frames. This nested structure allows for complex data structures to be
created and manipulated in R.

## Accessing elements of a list

Elements of a list can be accessed using double square brackets `[[]]` or the
dollar sign `$`. The double square brackets `[[]]` are used to extract a
single element by its index. The dollar sign `$` is used to extract an
element by its name.

Access the first element of the list using double square brackets `[[]]`


``` r
print(my_list[[1]])
```

```
## [1] 42 78 92
```

Furthermore, since this list element is a vector, you can access its elements
using single square brackets `[]`.

Access the second element of the first element of the list using single
square brackets `[]`

Note: The double square brackets `[[]]` are used to access elements of a
list, while single square brackets `[]` are used to access elements of a
vector.


``` r
print(my_list[[1]][2])
```

```
## [1] 78
```

Of course it requires a keen eye and a bit of practice to understand the
structure of the list and access the elements correctly.

Access the second element of the list using the dollar sign `$`

Note: The dollar sign `$` can only be used with named elements. If the
elements are not named, you must use double square brackets `[[]]` to access
them. Let's name the elements of the list to demonstrate this.


``` r
names(my_list) <- c(
    "element_1",
    "element_2",
    "element_3",
    "element_4",
    "element_5"
)
print(my_list$element_2)
```

```
## [1] "Hello, World!"       "Hello again, World!"
```

Again, named elements can be accessed using the dollar sign `$`, while unnamed
elements require the double square brackets `[[]]`.
## Adding elements to a list

Elements can be added to a list using the double square brackets `[[]]` or
the dollar sign `$`. To add an element to a list, you need to assign a value
to a new index or name.

Add a new element to the list using double square brackets `[[]]`


``` r
my_list[[6]] <- "New Element"
print(my_list)
```

```
## $element_1
## [1] 42 78 92
## 
## $element_2
## [1] "Hello, World!"       "Hello again, World!"
## 
## $element_3
## [1] TRUE
## 
## $element_4
## [1] 42
## 
## $element_5
## [1] 3+4i
## 
## [[6]]
## [1] "New Element"
```

Add a new element to the list using the dollar sign `$`


``` r
my_list$new_element <- "Another New Element"
print(my_list)
```

```
## $element_1
## [1] 42 78 92
## 
## $element_2
## [1] "Hello, World!"       "Hello again, World!"
## 
## $element_3
## [1] TRUE
## 
## $element_4
## [1] 42
## 
## $element_5
## [1] 3+4i
## 
## [[6]]
## [1] "New Element"
## 
## $new_element
## [1] "Another New Element"
```

Notice now how we mixed the use of double square brackets `[[]]` and the
dollar sign `$` to add elements to the list. Both methods work, but the
dollar sign `$` is more convenient when working with named elements. However,
the double square brackets `[[]]` are more flexible and can be used with both
named and unnamed elements. When working with data.frames, the dollar sign
`$` is the preferred method for accessing columns.

That's it for this example! In the next lecture, we will learn about matrices
in R.


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

