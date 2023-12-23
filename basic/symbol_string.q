/ https://www.timestored.com/kdb-guides/strings-symbols-enumeration#when-to-use
/ https://code.kx.com/q/basics/datatypes/
/ reference
/ When to use Symbol/String
/ The decision is further complicated because kdb typically stores the string pool entirely in memory (that's what your sym file is in a typical kdb+tick database). You must be careful not to cause it to become too bloated as it is difficult to correct. Typically you should follow the guidelines:

/ If the column is used in where clause equality comparisons e.g. select from t where sym in `A`B -> Symbol
/ Short, often repeated strings -> Symbol
/ Else Long, Non-repeated strings -> String
 

/Strings
/ There is no string datatype. On this site, string is a synonym for character vector (type 10h).
/  In q, the nearest equivalent to an atomic string is the symbol.



show `$"MSFT=212"
show string`MSFT

\\