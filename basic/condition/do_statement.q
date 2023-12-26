/
do¶
The imperative do statement allows repeated execution of a block of statements. It has the form,

do[exprcount;expr1; …;exprn]

where exprcount must evaluate to an non-negative integer. The expressions expr1 thru exprn are evaluated exprcount times in left-to-right order. Note that do is a statement, not a function, and does not have an explicit result.

The following expression is a loopy computation of n factorial. It iterates n - 1 times, decrementing the factor f on each pass.

q)n:5
q)do[-1+f:r:n; r*:f-:1] / do not do this!
q)r

The best recommendation about usage of do is: Don’t!

\

\t v*v:til 1000000
/15
\t do[100; v*v:til 1000000]
/677
\t:100 v*v:til 1000000