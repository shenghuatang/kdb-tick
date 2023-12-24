/
List iteration is through list items only – not atomic. The like keyword has list iteration in its left domain.
\

`quick like "qu?ck"
/1b
`quick`quack`quark like "qu?ck"       / list iteration
/110b
(`quick;`quack`quark) like "qu?ck"    / but not atomic  
/'type
/  [0]  (`quick;`quack`quark) like "qu?ck"
/                             ^
/ 
/ List iteration stops after the first level: it does not recurse.