/
/ while¶
The imperative while statement is an iterator of the form,

while[exprcond;expr1; …;exprn]

where exprcond is evaluated and the expressions expr1 thru exprn are evaluated repeatedly in left-to-right order as long as exprcond is non-zero. The while statement is not a function, does not have an explicit result and does not introduce lexical scope.

The author has never used while in actual code.

Here is loopy factorial redone with while.


q)f:r:n:5
q)while[f-:1;r*:f] / do not do this either!
q)r
120
\