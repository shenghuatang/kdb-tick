/
storage: Data is normalised to integers (fixed size), more compact than varying size character vectors. Unique values are stored only once in the sym file

speed: accelerate lookups, comparisions (in,+<>) are faster for intergers than character vectors

Example: In trade data, the stock tickers or currency pairs are often stored as symbos.
\

show `$"dsfd7"