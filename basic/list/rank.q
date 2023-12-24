/
/ All arrays are lists. A list of atoms of the same type is a vector.

An x \times y matrix is a list of x vectors of length y, all of the same type. A matrix has rank 2: it has two dimensions.

The rank of an array is the depth to which it is rectangular.
\


depth:{$[type[x]<0; 
  0; 
  "j"$sum(and)scan 1b,-1_{1=count distinct count each x}each raze scan x]}
shape:{$[0=d:depth x; 
  0#0j; 
  d#{first raze over x}each(d{each[x;]}\count)@\:x]}
tc:('[til;count])


depth 3   /atom
/0
depth enlist 0  / 1 item vector
/1
depth "the quic kbrown fox" /vector 
/1
depth("the";"quick";"brown";"fox")        / list - not rectangular at 2-nd depth
/1
depth 2 3 4#til 24
/3
2 3 4#til 24
depth 2 1 2 1 3 1 4#0
/ 7