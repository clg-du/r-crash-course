# Exercise 4 Solutions: Comparison and Logical Operators in R
2024-08-24


## Task 1: Comparison Operators

Perform the following comparison operations and assign the results to
variables:

1. Check if 5 is equal to 3 and assign the result to a variable called
   `equal_to_result`.

2. Check if 5 is not equal to 3 and assign the result to a variable called
   `not_equal_to_result`.

3. Check if 5 is greater than 3 and assign the result to a variable called
   `greater_than_result`.

4. Check if 5 is greater than or equal to 3 and assign the result to a
   variable called `greater_than_or_equal_to_result`.

5. Check if 5 is less than 3 and assign the result to a variable called
   `less_than_result`.

6. Check if 5 is less than or equal to 3 and assign the result to a variable
   called `less_than_or_equal_to_result`.

Your code here:


``` r
equal_to_result <- 5 == 3
not_equal_to_result <- 5 != 3
greater_than_result <- 5 > 3
greater_than_or_equal_to_result <- 5 >= 3
less_than_result <- 5 < 3
less_than_or_equal_to_result <- 5 <= 3
```

## Task 2: Logical Operators

Perform the following logical operations and assign the results to variables:

1. Perform an AND operation between TRUE and FALSE and assign the result to a
   variable called `and_result`.

2. Perform an OR operation between TRUE and FALSE and assign the result to a
   variable called `or_result`.

3. Perform a NOT operation on TRUE and assign the result to a variable called
   `not_result`.

Your code here:


``` r
and_result <- TRUE & FALSE
or_result <- TRUE | FALSE
not_result <- !TRUE
```

## Task 3: Combining Comparison and Logical Operators

Combine comparison and logical operators to perform the following operations
and assign the results to variables:

1. Check if 5 is greater than 3 AND 4 is less than 6. Assign the result to a
   variable called `combined_and_result`.

2. Check if 5 is greater than 3 OR 4 is less than 6. Assign the result to a
   variable called `combined_or_result`.

Your code here:


``` r
combined_and_result <- (5 > 3) & (4 < 6)
combined_or_result <- (5 > 3) | (4 < 6)
```

## Task 4: Display the Results

Print the values of all the variables created in Task 1, Task 2, and Task 3.

Your code here:


``` r
print(equal_to_result)
```

```
## [1] FALSE
```

``` r
print(not_equal_to_result)
```

```
## [1] TRUE
```

``` r
print(greater_than_result)
```

```
## [1] TRUE
```

``` r
print(greater_than_or_equal_to_result)
```

```
## [1] TRUE
```

``` r
print(less_than_result)
```

```
## [1] FALSE
```

``` r
print(less_than_or_equal_to_result)
```

```
## [1] FALSE
```

``` r
print(and_result)
```

```
## [1] FALSE
```

``` r
print(or_result)
```

```
## [1] TRUE
```

``` r
print(not_result)
```

```
## [1] FALSE
```

``` r
print(combined_and_result)
```

```
## [1] TRUE
```

``` r
print(combined_or_result)
```

```
## [1] TRUE
```

That's it for Exercise 4! Great job!