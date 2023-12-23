/ reference  https://code.kx.com/q/ref/dotz/#zx-argv

d:.z.x
/ Note that the script name and the single-letter options used by q itself are not included.
/  q command_line.q -P 0 -abc 123  -xyz 321
show d
show type d

/Command-line options can be converted to a dictionary using the convenient .Q.opt function.
d:.Q.opt .z.x
show d
show type d


/ how to define the default
d:.Q.def[`abc`xyz`efg`ddd!(1;2.;"a";`a)].Q.opt .z.x
show d
/  q command_line.q -P 0 -abc 123  -xyz 321
/ abc| 123
/ xyz| 321f
/ efg| "a"
/ ddd| `a
show "=== display keys==="
0N! key .Q.opt .z.x
show key .Q.opt .z.x
not `home in key .Q.opt .z.x
if [not `schema in key .Q.opt .z.x;-1 "Usage:q dd.q -home dd";exit 1];

.env.asset_class:first .Q.opt[.z.x]`schema
show .env.asset_class
.Q.opt[.z.x]
.Q.opt .z.x
\\