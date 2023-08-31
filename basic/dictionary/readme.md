# 5. Dictionaries
## 5.0 Overview¶
A dictionary is a mapping defined by an explicit association between a key list and value list. The two lists must have the same count and the key list should be a unique collection. While general lists can be used to create a dictionary, many dictionaries involve simple lists of keys.

## 5.1 Dictionary Basics¶
A dictionary is an association between a list of keys and a list of values. Logically it can also be considered as key-value pairs but it is stored physically as a pair of lists.

## 5.1.1 Definition¶
A dictionary, sometimes called an association, is a mapping defined by positional correspondence between a domain list of keys and a co-domain list of values. Dictionary creation uses the ! operator – read "bang" – in contrast with the syntactic form for lists.

keys!values

* All dictionaries have type 99h.


Although q does not enforce uniqueness for keys (a historical accident) a dictionary does provide a unique output value for each input value. Indeed, only the first key occurrence is seen during lookup.