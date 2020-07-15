# Ranges

Most programming languages always seem to forget about real range types or later add them as some kind of library level thing. Ranges should be first class citizens in a programming language, as they (kind of) are in Ada - you cannot return ranges, I'm not sure if that's a good idea or not or whether to have an interval type.

I want to have ranges in this language, they're useful to have for:

1. Type restriction.
2. Arrays.

```
1 .. 4      // 1, 2, 3, 4
.. 4        // What does even mean? First of which type?
1 ..        // 1, 2, 3, ... n, where n is the last value in of the type
```

or

```
1 .. 4
_ .. 4
1 .. _
```

or

```
1:4
:4
1:
````

or

```
1:4
_:4
1:_
````
