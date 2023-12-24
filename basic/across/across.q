0 +/ 10 20 30 40 50  /over
/150

(+/) 10 20 30 40 50  / no inital value
/  +/ 10 20 30 40 50  will fail
0 +\ 10 20 30 40 50

/Newton Raphson and Fibonacci Sequence
{[xn] xn+(2-xn*xn)%2*xn}/[1.0]
{[xn] xn+(2-xn*xn)%2*xn}\[1.0]
\P 16
{[xn] xn+(2-xn*xn)%2*xn}\[1.0]

{sum -2#x} 1 1
/2
{x, sum -2#x} 1 1

/1 1 2
{x, sum -2#x}/[10;1 1]


\\
