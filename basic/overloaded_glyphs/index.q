/
https://code.kx.com/q/ref/apply/#index
Index
d . i returns an item from list or dictionary d as specified by successive items in list i. The result is found in d at depth count i as follows.

The list i is a list of successive indexes into d. i[0] must be in the domain of d@. It selects an item of d, which is then indexed by i[1], and so on.
\

show " select item 1, i.e. d@1"
d:((1 2 3;4 5 6 7) ;(8 9;10;11 12) ;(13 14;15 16 17 18;19 20))
show d . enlist 1      / select item 1, i.e. d@1
/8 9
/10
/11 12
show d@1
show "select item 2 of item 1"
d . 1 2           / select item 2 of item 1
/11 12
d . 1 2 0         / select item 0 of item 2 of item 1
11
show "A right argument of enlist[::] selects the entire left argument."
d . enlist[::]