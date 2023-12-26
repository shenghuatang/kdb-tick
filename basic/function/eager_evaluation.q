/
Although evaluation of function arguments in q is eager, evaluation of the expressions 
n the conditional is short circuited, meaning that only the one selected for return is 
evaluated. Again in a fresh q session,
\

a:`a
/ `a
b:`b
/ `b
show $[1b;a:42;b:43]
/42
show a
/42
show b
/`b