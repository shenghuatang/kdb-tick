2000.01.01=0
/1b
1999.12.31=-1
/1b

2001.01.01+1
/2001.01.02

2001.01.01+31
/2001.02.01
2001.01.01+til 31
/2001.01.01 2001.01.02 2001.01.03 2001.01.04 2001.01.05 2001.01.06 2001.01.07 ..
2001.01m
/2001.01m
2000.01m=0
/1b
2000.02m=1
/1b
1999.12m=-1
/1b
2000.01.01=2000.01m
/1b
 
a:12:00:00.000000000 / this is noon
show a
show "Or to advance a time by one microsecond (i.e., 1000 nanoseconds) add 1000."
12:00:00.000000000+1000
12:00:00.000000000=12*60*60*1000000000 / to verify that temporal values are indeed their underlying values, test for equality.