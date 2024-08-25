# Lecture 1: Introduction to R
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



Here we will learn the basics of the R programming language.

## Comments in R

Comments in R...

- are preceded by the `#` symbol.
- are used to explain the code and make it more readable.
- are ignored by the R interpreter.
- can be on a line by themselves or at the end of a line of code.
- can be used to temporarily disable a line of code.
- can be used to document the code.
- can be used to make the code more readable.

Adding an apostrophe after the `#` symbol, i.e., `#'`, creates a Roxygen
comment. Roxygen comments are used to generate documentation for functions
and packages. Roxygen comments are used to create documentation for R
packages. It is also useful to write comments that can be used to generate
markdown documentation, such as the one you are reading now.

Here is a simple example of a comment in R:



``` r
# This is a comment in R
```


Comments are not executed by the R interpreter and are used to provide
additional information about the code.

## Running R code

R is an interpreted language, which means that code is executed line by line.
You can run each line of code individually in the R console or run the entire
script at once.

Normally, you would run the entire script or certain sections of the script
by highlighting the code and using the "Run" button or the keyboard shortcut
`Ctrl + Enter`.

To run the entire script, you can use the `source()` function in R. The
`source()` function reads and executes an R script file.

Functions will be covered in more detail in a later lecture.

Here is an example of running an R script using the `source()` function:


``` r
source("path/to/your/script.R")
```

The source function can be used to run other R scripts from within you
current script. The path to the script should be specified in quotes.

Paths can be relative or absolute. In this case, the path is relative to the
current working directory. Absolute paths start from the root directory of
the file system.

Here is an example of running an R script using the `source()` function with
a absolute path:


``` r
source("C:/Downloads/script.R")
```

Please note that the path separator for Mac in R is `/` and not `\` as in
Windows

A way to circumvent the issue of path dependencies is to use R projects. R
projects allow you to set a working directory for your project, and all paths
will be relative to that directory.

To create an R project in RStudio, go to `File -> New Project...` and select
`New Directory`. Then select `New Project` and choose the directory where you
want to create the project.

You can then save your script in the project directory and use relative paths
to source other scripts by first setting the working directory to the project
directory by opening the project in RStudio, either by double-clicking the
`.Rproj` file or by using the `File -> Open Project...` option.

In this course there is a `.Rproj` file in the root directory of the course
repository called `r-crash-course.Rproj`. It will set the working directory
to the root of the course repository.

In RStudio, you can run the entire script by clicking the "Source" button in
the script editor or by using the keyboard shortcut `Ctrl + Shift + S`.

Note: Any recommended keyboard shortcut may vary depending on your operating
system, RStudio version, or any other IDE you are using, such as VS Code or
Jupyter Notebook, for example.

## Our first `"Hello World!"` program in R

This example is a simple R script that prints `"Hello, World!"` to the
console. `print()` is a built-in function in R that prints the specified
value to the console.

R is case-sensitive, so `print` is not the same as `Print`.

Print `"Hello, World!"` to the console


``` r
print("Hello, World!")
```

```
## [1] "Hello, World!"
```

Note that the result of the `print()` function is displayed in the console.
The console is where the output of R code is displayed.

In RStudio, the console is located in the bottom left pane of the IDE,
although you can move it to a different location if you prefer.

The console is where you can interact with R directly, run code, and see the
output of your commands.

You can also use the console to perform calculations, test functions, and
debug your code.

Not everything in R needs to be printed to the console. For example, when you
assign a value to a variable, it won't be printed to the console unless you
explicitly print it.

You can also prompt the user for input using the `readline()` function.

Here is an example of prompting the user for input:

Prompt the user for their name


``` r
print(readline("Enter your name: "))
```


In R indentation is not required, but it is recommended for readability. In
RStudio you can highlight code and use `Ctrl + Shift + A` to clean up the
code and automatically indent it.

Here is an example of R being used as a calculator:


``` r
# Calculate the sum of two numbers
2 + 3
```

```
## [1] 5
```

``` r
# Calculate the difference of two numbers
5 - 2
```

```
## [1] 3
```

``` r
# We will cover more arithmetic operations in a later lecture.
```

## Packages
Packages in R are collections of functions and data sets developed by the
community. We can install and load packages in R using the
`install.packages()` and `library()` functions.

Install the "car" package


``` r
install.packages("car")
```

Load the `car` package


``` r
library(car)
```

The `car` package contains a dataset called `mtcars`. We can access this
dataset using the `data()` function.

Load the `mtcars` dataset


``` r
data(mtcars)
```

Display the first few rows of the `mtcars` dataset


``` r
head(mtcars)
```

```
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

We can also use the `summary()` function to get a summary of the dataset.

Get a summary of the `mtcars` dataset


``` r
summary(mtcars)
```

```
##       mpg             cyl             disp             hp       
##  Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0  
##  1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5  
##  Median :19.20   Median :6.000   Median :196.3   Median :123.0  
##  Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7  
##  3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0  
##  Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0  
##       drat             wt             qsec             vs        
##  Min.   :2.760   Min.   :1.513   Min.   :14.50   Min.   :0.0000  
##  1st Qu.:3.080   1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000  
##  Median :3.695   Median :3.325   Median :17.71   Median :0.0000  
##  Mean   :3.597   Mean   :3.217   Mean   :17.85   Mean   :0.4375  
##  3rd Qu.:3.920   3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000  
##  Max.   :4.930   Max.   :5.424   Max.   :22.90   Max.   :1.0000  
##        am              gear            carb      
##  Min.   :0.0000   Min.   :3.000   Min.   :1.000  
##  1st Qu.:0.0000   1st Qu.:3.000   1st Qu.:2.000  
##  Median :0.0000   Median :4.000   Median :2.000  
##  Mean   :0.4062   Mean   :3.688   Mean   :2.812  
##  3rd Qu.:1.0000   3rd Qu.:4.000   3rd Qu.:4.000  
##  Max.   :1.0000   Max.   :5.000   Max.   :8.000
```

That's it for this example! In the next lecture, we will learn more about
objects, data types, and variables in R.
