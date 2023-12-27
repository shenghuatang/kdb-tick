/
Projection¶
When a value of rank 
 is applied to 
 arguments and 
, the result is a projection of the value onto the supplied arguments (indexes), now known as the projected arguments or indexes.

In the projection, the values of projected arguments (or indexes) are fixed.

The rank of the projection is n-m
.


q)double:2*
q)double 5                         / unary
10
q)halve:%[;2]
q)halve[10]                        / unary
5
q)f:{x+y*z}                        / ternary
q)f[2;3;4]
14
q)g:f[2;;4]
q)g 3                              / unary
14
q)(f . 2 3) 4
14
q)l:("Buddy can you spare";;"?")
q)l "a dime"                       / unary
"Buddy can you spare"
"a dime"
"?"
q)m:("The";;;"fox")
q)m["quick";"brown"]               / binary
"The"
"quick"
"brown"
"fox"


Make projections explicit
When projecting a function onto an argument list, make the argument list full-length. This is not always necessary but it is good style, because it makes it clear the value is being projected, not applied.


q)foo:{x+y+z}
q)goo:foo[2]    / discouraged
q)goo:foo[2;;]  / recommended
You could reasonably make an exception for operators and keywords, where the rank is well known.


q)f:?["brown"]
q)f "fox"
5 2 5
q)g:like["brown"]
q)g "\*ow\*"
1b

\
l:("Buddy can you spare";;"?")
l "a dime"
