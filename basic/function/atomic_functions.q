/
/ Atomic functions¶
/ https://code.kx.com/q/basics/atomic/#string-atomic
/ 
/ Many q functions iterate recursively through list or dictionary arguments down to items of some depth.

Where a function recurses to the atoms of an argument, it is atomic in that domain: typically, left-atomic, right-atomic; or simply atomic for all its arguments.

A function that recurses to strings is string-atomic.
\