/
https://code.kx.com/q/basics/peach/

Parallel processing¶
The iterator Each Parallel ': (or its mnemonic keyword peach) delegates processing to secondary tasks for parallel execution. This can be useful, for example, for computationally expensive functions, or for accessing several drives at once from a single CPU.

To execute in parallel, start kdb+ with multiple secondary processes, using -s in the command line, and (since V3.5) the \s system command.

\