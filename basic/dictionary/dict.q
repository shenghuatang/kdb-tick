\P
\P 12
show 10 20 30!1.1 2.2 3.3
show 1%3
/
10| 1.1
20| 2.2
30| 3.3
\
show l:`a`b`c!100 200 300
show "=================lookup============="
show l[`a]
show l `a
show l[`x]
show l[`a`c]
ks:`a`c
show l ks
d:`a`b`c`a!10 20 30 11
show d[`a] / it is 10 not 11 only the first key occurrence is seen during lookup.
show "====Reverse Lookup with Find ?====="
d:`a`b`c`e!10 20 30 10
show ddup:d?10  / it is a not e
show where d=10
/ `a`e
show d?40  / he result of Find on an argument not in the value list is a null whose type matches the initial item in the key list.
/ `a
show "Neither the keys nor values need be simple lists but the keys should conform else odd things will happen during operations."
show (`Arthur`Dent; `Zaphod`Beeblebrox; `Ford`Prefect)! 100 42 150
/
Arthur Dent      | 100
Zaphod Beeblebrox| 42
Ford Prefect     | 150
\
show 1001 1002 1003!(`Arthur`Dent; `Zaphod`Beeblebrox; `Ford`Prefect)

d:`a`b`c!100 200 300
show key d
show value d
show count d

show "Because both the keys and values are required to be lists, you must enlist atoms for a singleton dictionary."
show "The following is not a singleton dictionary. This is a common mistake of qbies.q)`x!42 `x!42i"
show (enlist `x)!enlist 42

show "empty dict"
show ()!()
q)(`symbol$())!`float$()
show 1%3
_
\\