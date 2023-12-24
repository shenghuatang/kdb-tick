/

~ Match¶

x~y    ~[x;y]
Returns 0b unless x and y are identical. Comparison tolerance is used when matching floats.
\

(1 2 3+4 5 6)~4 5 6+1 2 3   / the arguments are identical
/ 1b
(1 2 3-4 5 6)~4 5 6-1 2 3   / these are not identical
/0b
1 2 3 ~`a`b                 / any two data objects can be compared
/ 0b

show "Match depends on the data type of the arguments, not just the values."
1~1h
/0b
3~3.0
/0b
3=3.0

show "This means the same symbols from different enumerations do not match, even when equal."
l1:`a`b`c
l2:`a`b`c
(`l1$`a)~`l2$`a
/0b
(`l1$`a)=`l2$`a
/1b


show "Match ignores attributes on lists."
1 2 3~`s#1 2 3
/1b

show 1 2 3
show `s#1 2 3
show "Two tables match even if they differ in attributes."
t1:([]x:1 2 3)
t2:([]x:`s#1 2 3)
meta t1
/c| t f a
/-| -----
/x| i
meta t2
/c| t f a
/-| -----
/x| i   s
t1~t2
/1b