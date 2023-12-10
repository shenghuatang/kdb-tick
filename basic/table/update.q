/ https://code.kx.com/q/ref/update/
/ https://code.kx.com/q4m3/9_Queries_q-sql/
/ https://www.tutorialspoint.com/kdbplus/q_tables_on_disk.htm
/ https://code.kx.com/q/ref/save/

t:([] name:`tom`dick`harry; age:28 29 35)
show t
update eye:`blue`brown`green from t
show t
show meta t
show tables[]

show "====================================="
t:([] name:`tom`dick`harry; hair:`fair`dark`fair; eye:`green`brown`gray)
show t
/q)t
/name  hair eye
/----------------
/tom   fair green
/dick  dark brown
/harry fair gray

update eye:`blue from t where hair=`fair
/name  hair eye
/----------------
/tom   fair blue
/dick  dark brown
/harry fair blue

show t
\\