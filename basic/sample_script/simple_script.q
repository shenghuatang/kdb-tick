parm:.Q.opt .z.x / command-line parameters

show parm

err:{ / validate parameters
  if[not`foo in x;2 "foo missing";:104];
  if[not`bar in x;2 "bar missing";:105];
  0 }parm

err:$[err=0;main parm;err]

main:{ / main process
  show 1; 
  }

exit err