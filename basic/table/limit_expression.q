/
/ select[n]
select[m n]
select[order]
select[n;order]
select distinct

where

n limits the result to the first n rows of the selection if positive, or the last n rows if negative
m is the number of the first row to be returned: useful for stepping through query results one block of n at a time
order is a column (or table) and sort order: use < for ascending, > for descending

select[3;>price] from bids where sym=s,size>0
This would return the three best prices for symbol s with a size greater than 0.

This construct works on in-memory tables but not on memory-mapped tables loaded from splayed or partitioned files.

Performance

select[n] applies the Where phrase on all rows of the table, and takes the first n rows, before applying the Select phrase.

So if you are paging it is better to store the result of the query somewhere and select[n,m] from there, rather than run the filter again

select distinct returns only unique records in the result.
\