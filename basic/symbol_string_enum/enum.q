/ https://code.kx.com/q/basics/enumerations/
/ https://code.kx.com/q4m3/7_Transforming_Data/#75-enumerations

/ operator	name	semantics
/ $	Enumerate	create an enumeration
/ ?	Enum Extend	extend an enumeration
/ !	Enumeration	resolve values from an enumeration

y:`a`b`c`b`a`b`c`c`c`c`c`c`c
show y
x:`a`b`c
show e:"i"$x?y
/ 0 1 2 1 0 1 2 2 2 2 2 2 2i  /these values are what we store instead of y.
x e                       /get back the symbols any time from x and e.
/`a`b`c`b`a`b`c`c`c`c`c`c`c
`x!e / same result as `x$y 
`x$`a`b`c`b`a`b`c`c`c`c`c`c`c

\\