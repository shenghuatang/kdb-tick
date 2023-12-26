/
/ https://code.kx.com/q4m3/10_Execution_Control/#1011-basic-conditional-evaluation
/ The imperative if statement conditionally evaluates a sequence of expressions. It is not a function and does not return a value. It has the form,

if[exprcond;expr1; …;exprn]

The exprcond is evaluated and if it is non-zero the expressions expr1 thru exprn are evaluated in left-to-right order. As with other conditionals, the brackets do not create lexical scope, so variables defined in the body exist in the same scope as the if.

There is no “else” to go with if. Should you find that this cramps your coding style, please see the previous recommendation about VBA.

Well-written q code rarely needs if. One example of legitimate use is pre-checking function arguments to abort execution for bad values.

\
a:42
b:2
if[a=42;x:6;y:7;b:a*b]
show x
/6
show y
/7
show b
/84