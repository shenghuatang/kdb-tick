/
Extracting a Sub-Dictionary
\

d:`a`b`c!10 20 30
show d `a`c
show `a`c#d
(enlist `c)#d

show "In the event of duplicate keys, only the first is extracted."


ddup:`a`b`a`c!10 20 30 20
show `a`c#ddup
/a| 10
/c| 20
\\