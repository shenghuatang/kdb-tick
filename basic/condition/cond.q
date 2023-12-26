/
$[test;et;ef;…]
Control construct: test, et, ef, etc. are q expressions.

Three expressions¶
If test evaluates to zero, Cond evaluates and returns ef, otherwise et.

Only the first expression test is certain to be evaluated.

Although it returns a result, Cond is a control-flow construct, not an operator.

It cannot be iterated, nor projected onto a subset of expressions.

Cond with many expressions can be translated to triads by repeatedly replacing the last three expressions with the triad.

$[q;a;r;b;s;c;d] <=> $[q;a;$[r;b;$[s;c;d]]]

$[q;a;r;b;s;c;d] <=> $[q;a;$[r;b;$[s;c;d]]]

Equivalently


$[q;a;  / if q, a
  r;b;  / else if r, b
  s;c;  / else if s, c
  d]    / else 

q)$[0b;`true;`false]
`false
q)$[1b;`true;`false]
`true

Name scope¶
Cond’s brackets do not create lexical scope. Name scope within its brackets is the same as outside them.
\
$[0b;`true;`false]
$[1b;`true;`false]

show "For brevity, nested triads can be flattened. $[q;a;r;b;c] <=> $[q;a;$[r;b;c]]"
/ $[q;a;r;b;s;c;d] = $[q;a;$[r;b;$[s;c;d]]]
{$[x>0;1;x<0;-1;0]}'[0 3 -9]
0 1 -1

show "Even number of expressions.An even number of expressions returns either a result or the generic null."
$[1b;`true;1b;`foo]
/`true
$[0b;`true;1b;`foo]
/`foo
$[0b;`true;0b;`foo]           / return generic null
$[0b;`true;0b;`foo]~(::)
/1b
//