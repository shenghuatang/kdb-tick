/
 Vector notation
Lists in which all the items have the same datatype play an important role in kdb+. Q gives vector constants a special notation, which varies by datatype.
\

01110001b                           / boolean
"abcdefg"                           / character
`ibm`aapl`msft                      / symbol

/Numeric and temporal vectors separate items with spaces and if necessary declare their type with a suffixed lower-case character.
2018.05 2018.07 2019.01m            / month
2 3 4 5 6h                          / short integer (2 bytes)
2 3 4 5 6i                          / xxxxx integer (4 bytes)
2 3 4 5 6                           / long  integer (8 bytes)
2 3 4 5 6j                          / long  integer (8 bytes)
2 3 4 5.6                           / float         (8 bytes)
2 3 4 5 6f                          / float         (8 bytes)