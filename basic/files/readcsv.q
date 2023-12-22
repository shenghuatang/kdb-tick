/ https://code.kx.com/q/learn/tour/csvs/
/read0 `:/newproject/kdb/kdb-tick/basic/files/example.csv

/The Load CSV operator requires only a list of column types and a delimiter to return the CSV as a table.
show t:("SFI";enlist",") 0: hsym`$getenv[`QHOME],"/example.csv"
/ show t;
show select from t;
save `:c:/tmp/t.csv
//
