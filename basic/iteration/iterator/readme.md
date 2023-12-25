https://code.kx.com/q/basics/implicit-iteration/

https://code.kx.com/download/learn/iteration/implicit.mp4

https://code.kx.com/q/wp/iterators/

# higher-order function
In mathematics and computer science, a higher-order function (HOF) is a function that does at least one of the following:

takes one or more functions as arguments (i.e. a procedural parameter, which is a parameter of a procedure that is itself a procedure),
returns a function as its result.

# Three kinds of iteration
https://code.kx.com/q/wp/iterators/

## Atomic iteration¶
Many native q operators have iteration built into them. They are atomic. They apply to conforming arguments.

## Mapping¶
The map iterators apply a function across items of a list or lists. They do not burrow into a nested structure, but simply iterate across its top level. That is just what Each does.

The map iterators:

```
    glyph	name	mnemonic keyword
    '	    Each	each
    \:	    Each Left	
    /:	    Each Right	
    ':	    Each Prior	prior
    ':	    Each Parallel	peach
    '	    Case



q)x:("the";"quick";"brown";"fox")
q)count[x]          / count x
4
q)count'[x]         / count each item of x
3 5 5 3

```


## Accumulation¶
In accumulator iterations the value is applied repeatedly, first to the entire (first) argument of the derived function, next to the result of that evaluation, and so on.

The number of evaluations is determined according to the value’s rank.

For a unary value, there are three forms:

Converge: iterate until a result matches either the previous result or the original argument
Do: iterate a specified number of times
While: iterate until the result fails a test
```
The accumulators:

glyph	name	mnemonic keyword
\	Scan	scan
/	Over	over


q){x*x}\[0.1]                        / Converge
0.1 0.01 0.0001 1e-08 1e-16 1e-32 1e-64 1e-128 1e-256 0
q)5{x*x}\0.1                         / Do
0.1 0.01 0.0001 1e-08 1e-16 1e-32
q)(1e-6<){x*x}\0.1                   / While
0.1 0.01 0.0001 1e-08
```
# basics
Basics¶
Iterators are higher-order unary operators: they take a single argument and return a derived function. The single argument is an applicable value: a list, dictionary, table, process handle, or function. The derived function iterates its normal application.

Iterators are the only operators that can be applied postfix. They almost always are.

For example, the iterator Scan, written \, applied to the Add operator + derives the function Add Scan, written +\, which extends Add to return cumulative sums.

```
q)+\[2 3 4]
2 5 9
Applied to the Multiply operator * it derives the function Multiply Scan, written *\, which returns cumulative products.


q)*\[2 3 4]
2 6 24
(Writers of some other programming languages might recognize these uses of Scan as fold.)

Another example. The iterator Each, written ', applied to the Join operator ,, derives the function Join Each, written ,'.


q)show a:2 3#"abcdef"
"abc"
"def"
q)show b:2 3#"uvwxyz"
"uvw"
"xyz"
q)a,b
"abc"
"def"
"uvw"
"xyz"
q)a,'b
"abcuvw"
"defxyz"
```
# iteration

Lists and dictionaries are first-class entities in q, and most operators and keywords iterate through them. This article is about when to leave it to q.

That is, when not to specify iteration.

Recall:

# Map iteration
evaluates an expression once on each item in a list or dictionary.

# Accumulator iteration
evaluates an expression successively: the result of one evaluation becomes an argument of the next.


Iterators (formerly known as adverbs) are the primary means of iteration in q, and in almost all cases the most efficient way to iterate. Loops are rare in q programs and are almost always candidates for optimization. Mastery of iterators is a core q skill.

The first part of this paper introduces iterators informally. This provides ready access to the two principal forms of iteration: maps and accumulators.

The second part of the paper reviews iterators more formally and with greater attention to syntax. We see how iterators apply not only to functions but also to lists, dictionaries and tables. From their syntax we see when parentheses are required, and why.

We discuss examples of their use.


# two principal forms of iteration: maps and accumulators.
