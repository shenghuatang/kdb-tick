/ 
/ https://code.kx.com/q/basics/comparison/

Comparison¶
<     Less Than            >     Greater Than             deltas  differences
<=    Up To                >=    At Least                 differ  flag changes
&     Lesser               |     Greater
min   least, minimum       max   greatest, maximum
mins  running minimums     maxs  running maximums
mmin  moving minimums      mmax  moving maximums

Six comparison operators¶
=  Equal            <>  Not Equal
>  Greater Than     >=  At Least
<  Less Than        <=  Up To

Syntax: (e.g.) x = y, =[x;y]

These binary operators work intuitively on numerical values (converting types when necessary), and apply also to lists, dicts, and tables. They are atomic.

Returns 1b where x and y are equal, else 0b.


q)"hello" = "world"
00010b
q)5h>4h
1b
q)0x05<4
0b
q)0>(1i;-2;0h;1b;0N;-0W)
010011b
q)5>=(`a`b!4 6)
a| 1
b| 0


Unlike Match, they are not strict about type.


q)1~1h
0b
q)1=1h
1b

\
