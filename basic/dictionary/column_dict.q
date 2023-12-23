/ https://code.kx.com/q/basics/dictsandtables/#column-dictionaries
/ Column dictionaries
/ When a dictionary’s value items are all same-length lists, it is a column dictionary.
 
show bd:`name`dob`sex!(`jack`jill`john;1982.09.15 1984.07.05 1990.11.16;`m`f`m)
/name| jack       jill       john
/dob | 1982.09.15 1984.07.05 1990.11.16
/sex | m          f          m
 
/ Flip it and we see a table.
t:flip bd
show t

/Each row is a dictionary.
show first t
