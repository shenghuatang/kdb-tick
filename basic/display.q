/ 0N! Useful for debugging, or avoiding formatting that obscures the data’s structure.
/ ! Display
/ Write to console and return

/ show
/ Format and display at the console.
 
/ Debugging¶
/q))       extra right parens mark suspended execution/s
/'myerror  Signal error, cut back stack
/:r        exit suspended function with r as result
/\         abort execution and exit debugger
/.Q.bt     dump backtrace
/&         current frame information
/.Q.trp    extends Trap to collect backtrace
/-e \e     error-trap mode


x:2
show "-----"
0N!x
show "-----"
![0N;x]

2+0N!3
\\