/ https://code.kx.com/q/ref/hsym/
/ hsym x     hsym[x]
/ Where x is a symbol atom or vector (since V3.1) returns the symbol/s prefixed with a colon if it does begin with one.
d:hsym`c:/q/test.txt  
show d
d:hsym`10.43.23.197                 / IP address to symbolic handle
show d /  `:10.43.23.197
d:hsym `host:port`localhost:8001    / hostname to symbolic handle
show d / `:host:port`:localhost:8001

d:hsym`$getenv[`QHOME]
show d
d:first read0 hsym`$getenv[`QHOME],"/d.txt"
show d
\\