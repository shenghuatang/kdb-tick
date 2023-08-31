/
/ This update/insert behavior is called upsert semantics. Because tables and keyed tables are dictionaries, upsert semantics pervade kdb+.
\

d:`a`b`c!10 20 30
d[`b]:11
show d[`x]:42
show d
\\