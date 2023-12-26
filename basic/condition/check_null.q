/
/ https://code.kx.com/q4m3/10_Execution_Control/#1011-basic-conditional-evaluation
/ 
/ In contrast with earlier versions of q, some null values are now acceptable for exprcond. It is the same as testing for null with the keyword null.
/ Float nulls do not work so the above is probably an accident and you should not count on it.
\

v:0N
$[v;`isnull;`notnull]
/ `isnull
$[null v;`isnull;`notnull]
/`isnull