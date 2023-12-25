d:3#"abcdef"
show d
show "Another example. The iterator Each, written ', applied to the Join operator ,, derives the function Join Each, written ,'."
show a:2 3#"abcdef"
/"abc"
/"def"
show b:2 3#"uvwxyz"
/"uvw"
/"xyz"
a,b
/"abc"
/"def"
/"uvw"
/"xyz"
a,'b
/"abcuvw"
/"defxyz"

x:("the";"quick";"brown";"fox")
count[x]          / count x
/4
count'[x]         / count each item of x
/3 5 5 3
 

/ The Each iterator has four variants. A function derived by Each Right /: applies its entire left argument to each item of its right argument. Correspondingly, a function derived by Each Left \: applies its entire right argument to each item of its left argument.

show "==========Each Left and Each Right =============="
"abc",/:"xyz"     / Join Each Right
/"abcx"
/"abcy"
/"abcz"
"abc",\:"xyz"     / Join Each Left
/"axyz"
/"bxyz"
/"cxyz"
 
/Remember which is which by the direction in which the slash leans.


show "================each Prior ======" 
/ takes a binary value as its argument. The derived function is unary: it applies the binary between each item of a list (or dictionary) and its preceding item. The differences between items in a numeric or temporal vector:
-':[1 1 2 3 5 8 13 21 34]     / Subtract Each Prior
/1 0 1 1 2 3 5 8 13

show "===========each parallel=========="
/takes a unary argument and applies it, as Each does, to each item in the derived function’s argument. Unlike Each, it partitions its work between any available secondary processes. Suppose analyze is CPU-intensive and takes a single symbol atom as argument.
analyze':[`ibm`msoft`googl`aapl]

/
/ With a unary function, the mnemonic keyword each is generally preferred as a cover for the iterator Each. Similarly, prior is preferred for Each Prior and peach for Each Parallel.


q)count each ("the";"quick";"brown";"fox")
3 5 5 3
q)(-) prior 1 1 2 3 5 8 13 21 34
1 0 1 1 2 3 5 8 13
q)analyze peach `ibm`msoft`googl`aapl
\
show "done"