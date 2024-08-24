# Exercise 11 Solutions: Working with Factors in R
2024-08-24


## Task 1: Creating a Factor

Consider the following vector of fruit names:



``` r
fruit_vector <- c("apple", "banana", "cherry", "apple", "banana", "cherry")
```


Create a factor called `fruit_factor` from the `fruit_vector` using the
`factor()` function.



``` r
fruit_factor <- factor(fruit_vector)
```

## Task 2: Specifying Factor Levels


Consider the following vector of T-shirt sizes:



``` r
size_vector <- c("S", "M", "L", "M", "S", "XL", "L", "S", "M")
```


Create a factor called `size_factor_specified` from the `size_vector` using
the `factor()` function. Specify the levels of the factor as "S", "M", "L",
and "XL".



``` r
size_factor_specified <- factor(size_vector, levels = c("S", "M", "L", "XL"))
```

## Task 3: Accessing Factor Levels


Access the levels of the `size_factor_specified` factor using the `levels()`
function and assign the result to a variable called `factor_levels`.



``` r
factor_levels <- levels(size_factor_specified)
```

## Task 4: Modifying Factor Levels


Modify the levels of the `size_factor_specified` factor by changing the order
to "M", "S", "XL", and "L". Assign the modified factor to a variable called
`modified_factor`.



``` r
modified_factor <- factor(size_vector, levels = c("M", "S", "XL", "L"))
```

## Task 5: Factor Operations


Perform the following operations on the `size_factor_specified` factor and
assign the results to new variables:

1. Compute the frequency of each level in the factor and assign the result to
   a variable called `level_frequency`.



``` r
level_frequency <- table(size_factor_specified)
```

2. Compute the cumulative frequency of each level in the factor and assign
   the result to a variable called `cumulative_frequency`.



``` r
cumulative_frequency <- cumsum(level_frequency)
```

## Task 6: Displaying Results

Display the factor `fruit_factor`, the modified factor `modified_factor`, the
factor levels `factor_levels`, the level frequency `level_frequency`, and the
cumulative frequency `cumulative_frequency` using the `print` function.



``` r
print(fruit_factor)
```

```
## [1] apple  banana cherry apple  banana cherry
## Levels: apple banana cherry
```

``` r
print(modified_factor)
```

```
## [1] S  M  L  M  S  XL L  S  M 
## Levels: M S XL L
```

``` r
print(factor_levels)
```

```
## [1] "S"  "M"  "L"  "XL"
```

``` r
print(level_frequency)
```

```
## size_factor_specified
##  S  M  L XL 
##  3  3  2  1
```

``` r
print(cumulative_frequency)
```

```
##  S  M  L XL 
##  3  6  8  9
```

That's it for Exercise 11! Great job!