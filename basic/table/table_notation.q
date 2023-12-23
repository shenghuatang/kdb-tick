/
The names assigned become the column names. The values assigned must conform: be lists of the same count, or atoms. The empty brackets indicate that the table is simple: it has no key.

You if you specify the column values as variables without specifying column names, the names of the variables will be used.
\

([]sym:`aapl`msft`goog;price:100 200 300)
/sym  price
/----------
/aapl 100
/msft 200
/goog 300

 

sym:`aapl`msft`goog
price:100 200 300
t:([] sym; price)  /You if you specify the column values as variables without specifying column names, the names of the variables will be used.

/sym  price
/----------
/aapl 100
/msft 200
/goog 300


([] sym:`aapl`msft`goog; price: 300) //some columns can be specified as atoms.
sym  price
----------
aapl 300
msft 300
goog 300

show "But not all. To define a 1-row table, enlist at least one of the column values."
([] sym:enlist`aapl; price:100)
/sym  price
/----------
/aapl 100


show "The initial expression list can declare one or more columns as a key. The values of the key column/s of a table should be unique"
([names:`bob`carol`bob`alice;city:`NYC`CHI`SFO`SFO]; ages:42 39 51 44)
/names city| ages
/----------| ----
/bob   NYC | 42
/carol CHI | 39
/bob   SFO | 51
/alice SFO | 44