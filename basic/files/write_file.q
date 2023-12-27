/
Save Text¶
Write a list of strings to file


filesymbol 0: strings                   0:[filesymbol;strings]
Where

filesymbol is a file symbol
strings a list of character strings
strings are saved as lines in the file. The result of Prepare Text can be used as strings.


q)`:test.txt 0: enlist "text to save"
`:test.txt
q)`:status.txt 0: string system "w"
`:status.txt
If filesymbol

does not exist, it is created, with any missing containing directories
exists, it is overwritten
\
show enlist "text to save"
`:c://tmp//test.txt 0: enlist "text to save1"   / 0 is text 1 is binary
read0 `:c://tmp//test.txt
`:c://tmp//test.txt 0: ("so long";"and thanks";"for all the dish")
`:c://tmp//status.txt 0: string system "w"
read0 `:c://tmp//test.txt
