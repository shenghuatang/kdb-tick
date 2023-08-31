/
Removing Entries¶
The adjoint operation to # is _, which removes key-value pairs. Its syntax is the same – i.e., a list of keys as the left operand and a dictionary on the right – and it returns the dictionary obtained by removing the key-value pairs for the specified keys.

Whitespace is required to the left of _ if the left operand is a variable since _ is a valid terminal name character.



q)d:`a`b`c!10 20 30
q)`a`c _ d
b| 20
q)(enlist `b) _ d
_
\
d:`a`b`c!10 20 30
show "remove"
show `a`c _ d
show "remove b"
show (enlist `b) _ d

show "--remove dup---"
d:`a`b`c`a!10 20 30 40
show `a`c _ d

show "--remove no element"
show `x`a _ d


show "remove all the keys"
d:`a`b`c!10 20 30
show `a`b`c _ d
show "show empty"
.Q.s1 `a`b`c _ d


show "The binary keyword cut is the same as this overload of _ on a dictionary."

show "There is another overload of _ with a dictionary on the left and a single key on the right that deletes just that key, which is seldom used."
show `a`c cut d


show d _ `b
\\
