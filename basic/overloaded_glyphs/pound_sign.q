/
 https://code.kx.com/q/ref/take/
 take operator
 x#y     #[x;y]
Where

x is an int atom or vector, or a table
y is an atom, list, dictionary, table, or keyed table

If x>count y, y is treated as circular.

\
x:2 5 4 7 5  /If x>count y, y is treated as circular.
show 8 # x
/ 2 5 4 7 5 2 5 4
5#`Arthur`Steve`Dennis
/ `Arthur`Steve`Dennis`Arthur`Steve
-5#`Arthur`Steve`Dennis
/ `Steve`Dennis`Arthur`Steve`Dennis
2#`a

show "Where x is a vector, returns a matrix or higher-dimensional array; count x gives the number of dimensions. (Since V2.3)"
show a:2 3 # x   / (2 5 4;7 5 2)
/2 5 4
/7 5 2
2 5#"!"
/"!!!!!"
/"!!!!!"

2 4#`Arthur`Steve`Dennis
/Arthur Steve  Dennis Arthur
/Steve  Dennis Arthur Steve

2 3 4#"a"
/"aaaa" "aaaa" "aaaa"
/"aaaa" "aaaa" "aaaa"


show five3d:2 3 4#til 5
/ five3d
/0 1 2 3 4 0 1 2 3 4 0 1
/2 3 4 0 1 2 3 4 0 1 2 3
five3d  /((0 1 2 3;4 0 1 2;3 4 0 1);(2 3 4 0;1 2 3 4;0 1 2 3))
count each five3d
/3 3
first five3d

show "A null in x will cause that dimension to be maximal."  /todo F.T
0N 3#til 10
/0 1 2
/3 4 5
/6 7 8
/,9

show "Applying # always results in a list."
show "In particular, the idiom 0# returns an empty list of the same type as the first item in its argument. Using an atom argument is a succinct way to create a typed empty list of the type of the atom."


0#1 2 3
/ `long$()
0#0
/`long$()
0#`
/`symbol$()

show "From V3.4, if x is a list of length 1, the result has a single dimension."
enlist[2]#til 10
/0 1

show "From V3.4, x can have length greater than 2 – but may not contain nulls."
(2 2 3#til 5)~((0 1 2;3 4 0);(1 2 3;4 0 1))
/1b
(enlist("";""))~1 2 0#"a"
/1b
all`domain=@[;1 2;{`$x}]each(#)@'(1 0 2;2 3 0N;0N 2 1;-1 2 3)
/1b
 
show "The effect of nulls in x changed in V3.3., From V3.3:"
3 0N#til 10
/0 1 2
/3 4 5
/6 7 8 9
2 0N#0#0
/(`long$();`long$())
(4 0N)#(),10
/(`long$();`long$();`long$();,10)
4 0N#til 9
/(0 1;2 3;4 5;6 7 8)

show "========================== dictionary ==========================="
show "dictionary , Where x is an int atom, y is a dictionary, returns x entries from y."
d:`a`b`c!1 2 3
2#d
/a| 1
/b| 2

show "dictionary , Where xx is a symbol vector ,y is a dictionary, eturns from y entries for x."
d:`a`b`c!1 2 3
`a`b#d
/a| 1
/b| 2
enlist[`a]#d
/a| 1

show "==========================table ================"
show "Where x is an int atom y is a table returns x rows from y"
dates:2018.01.01+100?31
/count dates
times:100?24:00:00.0000
qtys:100*1+100?100
ixs:100?3
syms:`appl`amzn`googl ixs
/show syms
/show 172.0 1189.0 1073.0 ixs
pxs:(1+100?.03)*172.0 1189.0 1073.0 ixs
t:([] date:dates;time:times;sym:syms;qty:qtys;px:pxs)
show t
tt:5#t

show "Where x is a symbol vector y is a table returns column/s x from y."
show `date`time#tt

/
Keyed table¶
Where

x is a table
y is a keyed table
columns of x are keys of y
returns matching rows, together with the respective keys. This is similar to retrieving multiple records through the square brackets syntax, except Take also returns the keys.


q)([]s:`s1`s2)#s
s | name  status city  
--| -------------------
s1| smith 20     london
s2| jones 10     paris  
\