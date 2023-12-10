/ https://www.timestored.com/kdb-guides/
/ https://code.kx.com/q/ref/display/
/Bang	Description
/0N!x	Show and return.
/-8!	to bytes.
/-9!	from bytes.
/-11!	Replay log file.
/-22!	Return uncompressed size of object.

/0N!x    ![0N;x]
/Returns x after printing its unformatted text representation to the console.
a:0N!6	/Show and return.
2+0N!3
![0N;1]

\\