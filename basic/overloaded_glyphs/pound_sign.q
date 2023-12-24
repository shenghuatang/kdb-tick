x:2 5 4 7 5
show 8 # x
/ 2 5 4 7 5 2 5 4
show 2 3 # x


show "Applying # always results in a list."
show "In particular, the idiom 0# returns an empty list of the same type as the first item in its argument. Using an atom argument is a succinct way to create a typed empty list of the type of the atom."



0#1 2 3
/ `long$()
0#0
/`long$()
0#`
/`symbol$()