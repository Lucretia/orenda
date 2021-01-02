# Arrays

Arrays are on the simplest data structures around and is usually built into the language, S/ML has lists rather than arrays, but they can be used in similar ways there.

The majority of languages all implement the starting index as zero rather than allowing the developer to model the data type required for the domain. Ada manages this with the concept of an index type, this allows arrays to be indexed using any scalar type and therefore can start from any value, even enumerations. This should be retained as anything else is just lacking. I don't understand why nobody else has implemented this in a language, it's *so powerful*.

```exp
a : array [x .. y, w .. z, ...] of type

// or

a : [x .. y, w .. z, ...] type
```

Where each range expressions (i.e. ```a .. b```) are of the same type.

## Dynamic arrays

One of the biggest issues with Ada is the fact that there are no real dynamic arrays, it's a static language of course, but it can be a pain to handle. You can create new declare blocks easily enough and create a new array there, so that's a workaround.

In Jai, they allow this using this syntax.

```jai
b : [..] int;
```

## Indexing

```exp
a[3]

// multiple dimensions:
a[3,3]

// or
a[3][3]
```

## Slicing

### Multi-dimensional array slicing

* For 1D:
  * Copy data from one slice into another slice.
* for nD:
  * Creates a new array object and copies the data across.
* Do we need to shared the slice at all?

```exp
a = b[1]
a[2 .. 5] = b[6 .. 9]
a[2 .. ] = b[6 .. ]
a[x1 .. y1, x2 .. y2] = b[x3 .. y3, x4 .. y4]
a[x1, x2 .. y1, y2] = b[x3, x4 .. y3, y4]

```

What if we do this?

```exp
a = b[x3, x4 .. y3, y4]
```

What do this do? Create a new matrix a with the values copied from b.

## Memory layout

* Column major
* Row major
* Defined at type definition time.
* Can be switched or converted?
* Jagged vs square, ability to switch using an aspect?

## SIMD

A new language can build in SIMD operations into the array handling.
