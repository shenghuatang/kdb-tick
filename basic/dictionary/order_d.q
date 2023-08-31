/
The order of the items in the key and value lists is significant, just as positional order is significant for lists. Although the I/O assignments and the associated mappings are equivalent regardless of order, differently ordered dictionaries are not identical.


q)(`a`b`c!10 20 30)~`a`c`b!10 30 20
0b
\

show (`a`b`c!10 20 30)~`a`c`b!10 30 20
//