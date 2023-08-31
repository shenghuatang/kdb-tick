/
Names¶
Apart from the leading dot, namespace names follow the same rules as names for q objects.

Outside its containing namespace, an object is known by the full name of its containing namespace followed by a dot and its own name.

Namespaces can contain other namespaces.

Thus .fee.fi.fo is the name of object fo within namespace fi within namespace fee.

Dictionaries¶
Namespaces are implemented as dictionaries. To list the objects contained in namespace .foo:

\ 

key `.foo
/To list all the namespaces in the root:


key `
/Construction¶
/Referring to a namespace is sufficient to create it.


q)key `
`q`Q`h`j`o
q).fee.fi.fo:42
q)key `
`q`Q`h`j`o`fee
q)key `.fee
``fi
q)key `.fee.fi
``fo