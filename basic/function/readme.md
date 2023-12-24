# Function Notation¶

Operators are built-in functions which can be used with in-fix notation. We examine functions in depth in Chapter 5, but cover some salient points here. There are two main differences between the functions we can write and built-in functions.

Our functions must have alphanumeric names whereas q functions can have purely symbolic names.
Our functions can only be used in prefix notation whereas q functions can be used prefix or infix.

## function call syntax
Function application in q uses square brackets to enclose the arguments, and semicolons to separate multiple arguments. 


## unary function call
Thus the output value of a unary function f for the input x is written f[x] We can omit the brackets for unary application and write f x

## prefix and infix
Application of a binary function g on arguments x and y is written g[x;y] in prefix or x g y in infix.

## atomix function
An atomic function acts recursively on data structures. For example, applying it to a list is the same as applying it to each item in the list.