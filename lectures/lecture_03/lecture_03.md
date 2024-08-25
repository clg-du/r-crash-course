# Lecture 3: Arithmetic Operations in R
2024-08-25

In this lecture, we will learn about arithmetic operations in R.

R provides a wide range of operators for performing mathematical calculations
on numeric data.

## Arithmetic operators in R

R supports the following arithmetic operators:

- Addition: `+`
- Subtraction: `-`
- Multiplication: `*`
- Division: `/`
- Exponentiation: `^`
- Modulo: `%%` (returns the remainder of a division)

Let's perform some arithmetic operations in R!

Addition


``` r
result_addition <- 5 + 3
print(result_addition)
```

```
## [1] 8
```

Subtraction


``` r
result_subtraction <- 5 - 3
print(result_subtraction)
```

```
## [1] 2
```

Multiplication


``` r
result_multiplication <- 5 * 3
print(result_multiplication)
```

```
## [1] 15
```

Division


``` r
result_division <- 5 / 3
print(result_division)
```

```
## [1] 1.666667
```

Exponentiation


``` r
result_exponentiation <- 5 ^ 3
print(result_exponentiation)
```

```
## [1] 125
```

Modulo


``` r
result_modulo <- 5 %% 3
print(result_modulo)
```

```
## [1] 2
```

## Order of operations

R follows the standard order of operations in mathematics:

1. Parentheses `()`
1. Exponentiation `^`
1. Multiplication `*` and Division `/`
1. Addition `+` and Subtraction `-`

We can use parentheses to change the order of operations. For example, to
calculate `5 + 3 * 2`, we can use parentheses to ensure that the
multiplication is performed first:


``` r
result_order_of_operations <- 5 + 3 * 2
print(result_order_of_operations)
```

```
## [1] 11
```

Using parentheses to change the order of operations


``` r
result_order_of_operations_parentheses <- (5 + 3) * 2
print(result_order_of_operations_parentheses)
```

```
## [1] 16
```

R DOES NOT provides shorthand operators for performing arithmetic operations
and updating variables. In Python and other programming languages, shorthand
operators are used to perform an arithmetic operation and update a variable
in a single step.

Instead we need to use the following syntax in R to iterate a variable and
update it:


``` r
x <- 5
x <- x + 1
print(x)
```

```
## [1] 6
```

In this lecture, we learned about arithmetic operations in R, including
addition, subtraction, multiplication, division, exponentiation, and modulo.

We also learned about the order of operations in R and how to use parentheses
to change the order of operations.

In the next lecture, we will learn about comparison and logical operators in
R.
