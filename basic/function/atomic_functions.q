
/
 Atomic functions¶
 https://code.kx.com/q/basics/atomic/#string-atomic
 
 Many q functions iterate recursively through list or dictionary arguments down to items of some depth.

Where a function recurses to the atoms of an argument, it is atomic in that domain: typically, left-atomic, right-atomic; or simply atomic for all its arguments.

A function that recurses to strings is string-atomic.


Extension of Atomic Functions¶
A fundamental feature of atomic functions is that their action extends automatically to the items in a list. Of course, if you want to combine two lists they must be of the same length.

Operator Precedence¶
There is none.

\

show "Extension of Atomic Functions"
neg 1 2 3
/-1 -2 -3
1 2 3+10 20 30
/11 22 33
show "1 2 3+10 20 30 40  will get error"
/1 2 3+10 20 30 40
/'length
neg (1 2 3; 4 5)
(1 2 3; 4 5)+(100 200 300; 400 500)

show "Another fundamental property of atomic operators is that they implicitly extend atom arguments to match lists."
100+1 2 3
/101 102 103
1 2 3+100
show "Atom extension also applies with nested lists."
100+(1 2 3; 4 5)
/101 102 103
/104 105
