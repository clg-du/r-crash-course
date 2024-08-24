# Lecture 1: Introduction to R
2024-08-24

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

Adding an apostrophe after the `#` symbol creates a Roxygen comment. Roxygen
comments are used to generate documentation for functions and packages.
Roxygen comments are used to create documentation for R packages. It is also
useful to write comments that can be used to generate markdown documentation,
such as the one you are reading now.

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

In R indentation is not required, but it is recommended for readability. In
RStudio you can highlight code and use `Ctrl + Shift + A` to clean up the
code and automatically indent it.
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
