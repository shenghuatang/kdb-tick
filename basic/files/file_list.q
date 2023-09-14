//https://stackoverflow.com/questions/68518450/how-do-i-get-a-list-of-files-in-a-directory-in-kdb
/ https://code.kx.com/q/ref/where/
a:43
show a-:1
/show 1 2 3 4 5@:2 3
L:1 2 3
show L,:4
files: system "ls /tmp/"
show files   
show "---------"
show files where files like "*1.tmp"
show where files like "*1.tmp"
show files@:1 2
show "---------0"
show files 
show "---------1"
show files@:where files like "*.tmp"
show "---------2"
show `brawn`brown like "br[^o]wn"
show files
show "=================="
files: key `:/tmp
show files

/ 22i
\\
