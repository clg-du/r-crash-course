#' # Lecture 6: List in R
#'
#' In this lecture, we will learn about lists in R.
#'
#' Lists are another essential data structure in R that can store multiple objects of different types.
#' Unlike vectors, lists can store objects of different lengths and types in a single container.
#' This makes lists a versatile and powerful data structure in R.
#'
#' Lists are created using the `list()` function, which takes an arbitrary number of arguments.
#' Each argument passed to the `list()` function becomes an element of the list.
#'
#' Let's create a list in R!
#'
#' Create a list with multiple elements of different types
my_list <- list(42, "Hello, World!", TRUE, 42L, 3 + 4i)

#' Note that the elements of the list can be of different types and lengths!
#' The list `my_list` contains a numeric value, a character string, a logical value, an integer value, and a complex number.
#' This is something that vectors cannot do, as they require all elements to be of the same type.
#'
#' Display the list
print(my_list)

#' Notice how the list is displayed with each element on a separate line.
#' The elements are labeled with their index in the list (starting from 1).
#' The type of each element is also displayed.
#' This makes it easy to see the contents of the list and the types of the elements.
#'
#' Accessing elements of a list
#'
#' Elements of a list can be accessed using double square brackets `[[]]` or the dollar sign `$`.
#' The double square brackets `[[]]` are used to extract a single element by its index.
#' The dollar sign `$` is used to extract an element by its name.
#'
#' Access the first element of the list using double square brackets `[[]]`
print(my_list[[1]])

#' Access the second element of the list using the dollar sign `$`
#' Note: The dollar sign `$` can only be used with named elements.
#' If the elements are not named, you must use double square brackets `[[]]` to access them.
#' Let's name the elements of the list to demonstrate this.
names(my_list) <- c("element_1", "element_2", "element_3", "element_4", "element_5")
print(my_list$element_2)

#' Adding elements to a list
#'
#' Elements can be added to a list using the double square brackets `[[]]` or the dollar sign `$`.
#' To add an element to a list, you need to assign a value to a new index or name.
#'
#' Add a new element to the list using double square brackets `[[]]`
my_list[[6]] <- "New Element"
print(my_list)

#' Add a new element to the list using the dollar sign `$`
my_list$new_element <- "Another New Element"
print(my_list)

#' Notice now how we mixed the use of double square brackets `[[]]` and the dollar sign `$` to add elements to the list.
#' Both methods work, but the dollar sign `$` is more convenient when working with named elements.
#' However, the double square brackets `[[]]` are more flexible and can be used with both named and unnamed elements.
#' When working with data.frames, the dollar sign `$` is the preferred method for accessing columns.
#'
#' That's it for this example! In the next lecture, we will learn about matrices in R.
