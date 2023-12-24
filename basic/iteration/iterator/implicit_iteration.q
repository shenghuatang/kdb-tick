/

Lists and dictionaries are first-class entities in q, and most operators and keywords iterate through them. This article is about when to leave it to q.

That is, when not to specify iteration.

Recall:

Map iteration
evaluates an expression once on each item in a list or dictionary.

Accumulator iteration
evaluates an expression successively: the result of one evaluation becomes an argument of the next.

Scalar extension¶
Unless! If one of the operands is an atom, scalar extension pairs it with every list item.

\

10 100 1000 * (1 2 3;4 5 6;7 8)


show "Scalar extension"
5 < 1 2 3 4 5 6 7 8

show "Atomic iteration"
/Many operators have atomic iteration: they iterate recursively, pairwise and with scalar extension, until they find the atoms in a list.

1 4 7 < (1 2 3;4 5 6;7 8)
/011b
/011b
/01b
(1;2 3 4;(5 6 7;8)) < (1 2 3;4 5 6;7 8)
/(011b;111b;(110b;0b))
lower("THE";("Quick";"Brown");"FOX")
/("the";("quick";"brown");"fox")
cos (1 2 3; 4 5 6)
/0.5403023  -0.4161468 -0.9899925
/-0.6536436 0.2836622  0.9601703
show "Atomic operators are atomic in both their left and right domains."
4 < (1;2 3 4;(5 6 7;8))
/(0b;000b;(111b;1b))

show "Some binary keywords are atomic in only one domain. For example, the right argument of within is an ascending pair of sortable type. But in its left domain, within is atomic."

2 3 4 within 3 6
/011b
(2 3 4;(5; 6 7;8)) within 3 6
/011b;
/1b 10b 0b
 
 
\\