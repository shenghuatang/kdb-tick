/

Suppose that instead of adding things pair-wise, we want to add all the items across a list.
 The way this is done in functional languages is with higher order functions, or as they are called in q,
  iterators. Regardless of the terminology, the idea is to take the operation of a function and produce a
   closely related function having the same “essence” but applied in a different manner.

You met the concept of higher-order functions in elementary calculus, perhaps without being properly introduced.
 The derivative and integral are actually higher-order functions that take a function and produce a related function. 
 Behind all the delta-epsilon mumbo-jumbo, the derivative of a given function is a function that represents the
  instantaneous behavior of the original. The (indefinite) integral is the anti-derivative – i.e., a function whose
   instantaneous behavior is that of the given function.

In the case of adding the values in a list, we need a higher-order function that takes addition and turns it into a function 
that works across the list. In functional programming this is called a fold ; 
in q it is Over. The technique is to accumulate the result across the list recursively. 
(See §0.2 Mathematical Refresher for more on recursion). Specifically, begin with an initial value in the accumulator and
 then sequentially add each list item into the previous value of the accumulator until the end the list. 
 Upon completion, the accumulator holds the desired result.

 
over /

The higher-order function sibling to Over is Scan, written \. The process of Scan is the same as that of Over with one difference: instead of returning only the final result of the accumulation, it returns all intermediate values
scan \

Scan, Over and memory

While Scan and Over perform the same computation, in general, Over requires less memory, because it does not store intermediate results.


# higher-order function
In mathematics and computer science, a higher-order function (HOF) is a function that does at least one of the following:

takes one or more functions as arguments (i.e. a procedural parameter, which is a parameter of a procedure that is itself a procedure),
returns a function as its result.


# basics
Iterators are higher-order unary operators: they take a single argument and return a derived function. The single argument is an applicable value: a list, dictionary, table, process handle, or function. The derived function iterates its normal application.

Iterators are the only operators that can be applied postfix. They almost always are.

For example, the iterator Scan, written \, applied to the Add operator + derives the function Add Scan, written +\, which extends Add to return cumulative sums.


\
0 +/ 1 2 3 4 5
/15 

0 +/ 1+til 100

show "There is nothing special about built-in operator + – we can use any operator or even our own function."
0 {x+y}/ 1 2 3 4 5

0 {x+y}/ 1+til 100


sum 1+til 10 / this is +/
/55
prd 1+til 10 / this is */ -- note missing "o"
/3628800
max 20 10 40 30 / this is |/
/40
min 20 10 40 30 / this is &/
/10
