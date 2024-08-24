# Exercise 3 Solutions: Arithmetic Operations in R
2024-08-24


## Task 1: Perform Arithmetic Operations

Perform the following arithmetic operations and assign the results to
variables:

1. Add 10 and 5 and assign the result to a variable called `addition_result`.

2. Subtract 7 from 15 and assign the result to a variable called
   `subtraction_result`.

3. Multiply 4 by 6 and assign the result to a variable called
   `multiplication_result`.

4. Divide 20 by 5 and assign the result to a variable called
   `division_result`.

5. Calculate the square of 9 and assign the result to a variable called
   `exponentiation_result`.

6. Find the remainder when 17 is divided by 4 and assign the result to a
   variable called `modulo_result`.

Your code here:


``` r
addition_result <- 10 + 5
subtraction_result <- 15 - 7
multiplication_result <- 4 * 6
division_result <- 20 / 5
exponentiation_result <- 9^2
modulo_result <- 17 %% 4
```

## Task 2: Display the Results

Print the values of all the variables created in Task 1.

Your code here:


``` r
print(addition_result)
```

```
## [1] 15
```

``` r
print(subtraction_result)
```

```
## [1] 8
```

``` r
print(multiplication_result)
```

```
## [1] 24
```

``` r
print(division_result)
```

```
## [1] 4
```

``` r
print(exponentiation_result)
```

```
## [1] 81
```

``` r
print(modulo_result)
```

```
## [1] 1
```

## Task 3: Order of Operations

Calculate the following expressions using the correct order of operations and
assign the results to variables:

1. Calculate 5 plus 3 times 2 and assign the result to a variable called
   `order_of_operations_result`.

2. Calculate the same expression but use parentheses to change the order of
   operations. Assign the result to a variable called
   `order_of_operations_parentheses_result`.

Your code here:


``` r
order_of_operations_result <- 5 + 3 * 2
order_of_operations_parentheses_result <- (5 + 3) * 2
```

That's it for Exercise 3! Great job!