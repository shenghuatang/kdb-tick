/ https://code.kx.com/q/ref/take/ 
/ Select leading or trailing items from a list or dictionary, named entries from a dictionary, or named columns from a table
/ x#y     #[x;y]
/ Where

/x is an int atom or vector, or a table
/y is an atom, list, dictionary, table, or keyed table
/returns y as a list, dictionary or table described or selected by x.
 

show "Where x is an int atom, and y is an atom or list, returns a list of length x filled from y, starting at the front if x is positive and the end if negative."
5#0 1 2 3 4 5 6 7 8 
-5#0 1 2 3 4 5 6 7 8 


show "If x>count y, y is treated as circular."

5#`Arthur`Steve`Dennis
/ `Arthur`Steve`Dennis`Arthur`Steve
-5#`Arthur`Steve`Dennis
/ `Steve`Dennis`Arthur`Steve`Dennis
3#9
/ 9 9 9
2#`a
/ `a`a