/
Fibonacci Numbers¶
We define the Fibonacci numbers recursively.

Base case: the initial sequence is the list 1 1
Inductive step: given a list of Fibonacci numbers, the next value of the sequence appends the sum of its two last items.
We have the basic ingredients to express this in q. Start with the base case F0.


q)F0:1 1
q)-2#F0
_
q)sum -2#F0
_
q)F0,sum -2#F0
_
Notice that read from right-to-left, the last expression exactly restates the definition of the Fibonacci term: “take the last two elements of the sequence, sum them and append the result to the sequence.” This is declarative programming – say “what” to do not “how” to implement it.

We abstract this expression into a function that appends the next item at an arbitrary point in the sequence.


q){x,sum -2#x}
_
Let’s take it for a test drive on the first few terms.


q){x,sum -2#x}[1 1]
_
q){x,sum -2#x}[1 1 2]
_
Wouldn’t it be nice if q had a higher-order function that applies a recursive function a specified number of times, starting with the base case? Conveniently, there is an overload of our friend / that does exactly this. Specify the base case and the number of times to iterate the recursion and it’s done.


q)10 {x,sum -2#x}/ 1 1
1 1 2 3 5 8 13 21 34 55 89 144

\