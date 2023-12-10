dates:2018.01.01+100?31
count dates
times:100?24:00:00.0000
qtys:100*1+100?100
ixs:100?3
syms:`appl`amzn`googl ixs
show syms
show 172.0 1189.0 1073.0 ixs
show pxs:(1+100?.03)*172.0 1189.0 1073.0 ixs
t:([] date:dates;time:times;sym:syms;qty:qtys;px:pxs)
show t
t:`date`time xasc t
show 5#t
show select date,time,sym,px from t where sym=`appl
\t show select date,time,sym,px from t where sym=`appl

show 5#select open:first px,close:last px,lo:min px, hi:max px by date,time from t where sym=`appl