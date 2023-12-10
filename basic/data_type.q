show `12=
a:111b
show a
show 42=6*7
show 1 2 3=2 2 4
show "12"
show `12`212

show 1,2,3
show 1 2 3
/ show 1 2 3 = 1 2 3 4
show 2012.01.11
show 2000.01.01=1
show 1999.12.31=-1
show 2000.01.01+31
show 2000.01.01+til 31
show 2000.01m=0
show 2000.02m=1
show 2000.01.01=2000.01m

x:2015.01.22      / This is how we write 22nd Jan 2015
show `int$x            / Number of days since 2000.01.01 5500i
show `year$x           / Extracting year from the date
/ 2015i
show x.year            / Another way of extracting year
/ 2015i

show `mm$x             / Extracting month from the date
/ 1i

show x.mm              / Another way of extracting month
/ 1i

show `dd$x             / Extracting day from the date
/ 22i

show x.dd              / Another way of extracting day
/ 22i
\\

\
https://www.tutorialspoint.com/kdbplus/q_language_temporal_data.htm

The 1st of January 2000 fell on a Saturday. Therefore any Saturday throughout the history or in the future when divided by 7, would yield a remainder of 0, Sunday gives 1, Monday yield 2.

             Day               mod 7
           Saturday              0
           Sunday                1
           Monday                2
           Tuesday               3
           Wednesday             4
           Thursday              5
           Friday                6