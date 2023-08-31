/ 
 When you know that the keys are unique you can apply the `u# attribute to the keys.
 This will effectively cause the dictionary to be a hash table with the attendant improvement in lookup speed over the default linear lookup.
\

show (`u#`a`b`c)!10 20 30

/ Although q does not enforce uniqueness for keys (a historical accident) a dictionary does provide a unique output value for each input value. Indeed, only the first key occurrence is seen during lookup.
show a:(1,2,2,3,4)!10 20 21 30 40
count a
show (`u#`a`b`c)
\\