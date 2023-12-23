d:`a`b`c!10 20 30
show neg d
show 2*d
d=20
show d

show "When the domains of two dictionary maps are identical, performing a binary operation is also straightforward: do it value-with-value along the keys. For example,
 to add two dictionaries with a common list of keys, add their corresponding values"
d1:`a`b`c!1 2 3
d2:`a`b`c!10 20 30
show d1+d2

show "when What should happen when the domains lists are not identical? First, the domain of the resulting dictionary is the union of the domains – i.e., the union of the key lists. For items in the common domain – i.e., the intersection of the keys lists, we already know we should apply the operation value-with-value."
"So the question becomes: what to do on non-common key items? The answer: Nothing! Since there really isn’t anything to do where there is no matching key on the other side, simply carry the value to the result. In essence, this implies using the identity element for the operation in place of the missing value."
d1:`a`b`c!1 2 3
d2:`b`c`d!20 30 40
show d1+d2



show "===join=="
d1:`a`b`c!10 20 30
d2:`x`y!40 50
show d1,d2

d1:`a`b`c!10 20 30
d2:`a`b`c!100 200 300
show d1,d2
\\