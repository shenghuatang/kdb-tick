/
/Non-simple Keys and Values¶
Neither the key nor value lists of a dictionary are required to be atoms or uniform. Either can be nested lists.
\

dwhackey:(1 2; 3 4 5; 6; 7 8)!10 20 30 40 / atom 6 is whack
show "========= show key===="
show  key dwhackey

show dwhackey 1 2
/10
show dwhackey 7 8
/ 40
/ show "the observed behavior is that lookup in either direction fails at the first item of different shape."
show dwhackey 6
/0N
show "the observed behavior is that lookup in either direction fails at the first item of different shape."
dwhackval:10 20 30 40!(1 2; 3 4 5; 6; 7 8) / atom 6 is whack he observed behavior is that lookup in either direction fails at the first item of different shape.
show dwhackval?3 4 5
/20
show dwhackval?6

\\