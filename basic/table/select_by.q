/
/ https://code.kx.com/q/ref/select/
By phrase¶
A select query that includes a By phrase returns a keyed table. The key columns are those in the By phrase; values from other columns are grouped, i.e. nested.
\

k:`a`b`a`b`c
v:10 20 30 40 50
t:([]c1:k;c2:v)
show select c2 by c1 from t
/c1| c2
/--| -----
/a | 10 30
/b | 20 40
/c | ,50

show v group k   / compare the group keyword
/a| 10 30
/b| 20 40
/c| ,50
 
show "The ungroup keyword reverses the grouping, though the original order is lost." 
show ungroup select c2 by c1 from ([]c1:k;c2:v)

t:([] name:`tom`dick`harry`jack`jill;sex:`m`m`m`m`f;eye:`blue`green`blue`blue`gray)
t
/name  sex eye
/---------------
/tom   m   blue
/dick  m   green
/harry m   blue
/jack  m   blue
/jill  f   gray

select name,eye by sex from t
/sex| name                 eye
/---| ------------------------------------------
/f  | ,`jill               ,`gray
/m  | `tom`dick`harry`jack `blue`green`blue`blue

select name by sex,eye from t
/sex eye  | name
/---------| ---------------
/f   gray | ,`jill
/m   blue | `tom`harry`jack
/m   green| ,`dick

show "A By phrase with no Select phrase returns the last row in each group."
select by sex from t
/sex| name eye
/---| ---------
/f  | jill gray
/m  | jack blue

show "Where there is a By phrase, and no sort order is specified, the result is sorted ascending by its key."
