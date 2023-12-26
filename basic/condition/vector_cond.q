/
/ https://code.kx.com/q/ref/cond/
? Vector Conditional¶
Replace selected items of one list with corresponding items of another


?[x;y;z]
Where

x is a boolean vector
y and z are lists of the same type
x, y, and z conform
\

?[11001b;1 2 3 4 5;10 20 30 40 50]
1 2 30 40 5

/If x, y, or z are atomic, they are repeated.
?[11001b;1;10 20 30 40 50]
/1 1 30 40 1
?[11001b;1 2 3 4 5;99]
/1 2 99 99 5