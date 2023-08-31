show {[x]x*x}5
show {[x]x*x}[5]
show {x*x}[5]

show {[a;b] a2:a*a; b2:b*b;show `b2,b2; a2+b2+2*a*b}[20;4]  / binary function
/ 576
/ show a2

/ Result
/ The result of the lambda is the result of the last statement evaluated. If the last statement is empty, the result is the generic null, which is not displayed

f:{2*x;}      / last statement is empty
show f 10          / no result shown
show (::)~f 10     / matches generic null
/1b

a:2*3;6*7
show a
show "==================="
show ::[42]
`a set 43
show a
/ Newton Raphson
show {[xn] xn+(2-xn*xn)%2*xn}/[1.0]



show {-2# x} 1 1
show {sum -2 # x} 1 1
show {x, sum -2#x}/[10;1 1]
\\