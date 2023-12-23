/q){[a;b] a2:a*a; b2:b*b; a2+b2+2*a*b}[20;4]  / binary function
/ 576
show {[x]x*x}5
show {[x]x*x}[5]
show {x*x}[5]

show {[a;b] show 1;show 2;a2:a*a; b2:b*b;show `b2;show b2; a3:a2+b2+2*a*b}[20;4]  / binary function
d:{[a;b] show 1;show 2;a2:a*a; b2:b*b;show `b2;show b2; a3:a2+b2+2*a*b}[20;4]
show "===show d"
show d
show "===================a2"

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

main:{
     show "main";
     0N!5+4;
     show  "main1"
 }

main`;
a:0N!2+3  / Print to console AND also return the value. Useful to insert for debugging.
main 2;
main 1
show main


/ Explicit return¶
/ To terminate evaluation successfully and return a value, use an empty assignment, 
/ which is : with a value to its right and no variable to its left.


c:0
f:{a:6;b:7;:a*b;c::98}
show f 0
/ 42
show c
/ 0
e:2
f:{b:7;:98;c::9}
show f 0
c:d:9
show c
show d
/0

\\