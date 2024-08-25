# Exercise 6 Solutions: Lists in R
2024-08-25


## Task 1: Creating Lists

Create the following lists and assign them to variables:

1. Create a list with the following elements: 10, "red", TRUE, 3.14 and
   assign it to a variable called `my_list`.

2. Create a list with the following named elements: "name" with value "John",
   "age" with value 25, "city" with value "New York" and assign it to a
   variable called `person`.

Your code here:


``` r
my_list <- list(10, "red", TRUE, 3.14)
person <- list(name = "John", age = 25, city = "New York")
```

## Task 2: Accessing List Elements

Use indexing to perform the following operations:

1. Access the second element of the first list and assign it to a variable
   called `list_element`.

2. Access the value of the "age" element in the second list and assign it to
   a variable called `age`.

Your code here:


``` r
list_element <- my_list[[2]]
age <- person$age
```

## Task 3: Manipulating Lists

Perform the following operations on the lists:

1. Add a new element to the first list with the value "blue" and assign the
   modified list to a new variable called `modified_list`.

2. Change the value of the "city" element in the second list to "San
   Francisco".

Your code here:


``` r
modified_list <- c(my_list, "blue")
person$city <- "San Francisco"
```

## Task 4: Display the Results

Print the values of all the variables created in Task 1, Task 2, and Task 3.

Your code here:


``` r
print(my_list)
```

```
## [[1]]
## [1] 10
## 
## [[2]]
## [1] "red"
## 
## [[3]]
## [1] TRUE
## 
## [[4]]
## [1] 3.14
```

``` r
print(person)
```

```
## $name
## [1] "John"
## 
## $age
## [1] 25
## 
## $city
## [1] "San Francisco"
```

``` r
print(list_element)
```

```
## [1] "red"
```

``` r
print(age)
```

```
## [1] 25
```

``` r
print(modified_list)
```

```
## [[1]]
## [1] 10
## 
## [[2]]
## [1] "red"
## 
## [[3]]
## [1] TRUE
## 
## [[4]]
## [1] 3.14
## 
## [[5]]
## [1] "blue"
```

