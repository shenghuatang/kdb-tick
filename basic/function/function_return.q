/
/ Return and Signal¶
Normal function application evaluates each expression in the function body in sequence and terminates after the last one. There are two mechanisms for ending the execution early: one indicates successful completion and the other signals abrupt termination.

To terminate function application immediately and return a normal value, use an empty assignment – 
that is, : with the return value to its right and no variable to its left. For example, in the following instrumented function, 
application is terminated and the result is returned in the fourth expression. The final expression is never evaluated.

A legitimate use of the if statement is to terminate execution with an exception. The following snippet would typically reside inside a function body.



...
if[a<50; '"Bad a"];
...


\
f:{0N!"Begin"; a:x; b:y; :a*b; "End"}
f[6;7]
/"Begin"
/42

g:{0N!"Begin"; a:x; b:y; '"End"; c:b}
g[6;7]
/"Begin"
/'End 
