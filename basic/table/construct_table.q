/https://code.kx.com/q/kb/faq/#table-notation
/Here is a matrix: a list of four vectors.
/ A table is an ordered list of same-key dictionaries.

show mat:(`Jack`Jill`Janet;`brown`black`fair;`blue`green`hazel;12 9 14)
/Jack  Jill  Janet
/brown black fair
/blue  green hazel
/12    9     14

show t:flip`name`hair`eye`age!mat

/Like any list, its length – the number of its records – is given by count.
count t


/Table notation¶
/The same table can be defined with table notation:

t~([]name:`Jack`Jill`Janet;hair:`brown`black`fair;eye:`blue`green`hazel;age:12 9 14)
show t


stock:`ibm`bac`usb
price:121.3 5.76 8.19
amount:1000 500 800
time:09:03:06.000 09:03:23.000 09:04:01.000

show trade:([]stock;price;amt:amount;time)
/stock price amt  time
/-----------------------------
/ibm   121.3 1000 09:03:06.000
/bac   5.76  500  09:03:23.000
/usb   8.19  800  09:04:01.000

show meta trade