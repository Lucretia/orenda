# Arrays

Arrays are one of the simplest data structures around and is usually built into the language, S/ML has lists rather than arrays, but they can be used in similar ways there.

The majority of languages all implement the starting index as zero rather than allowing the developer to model the data type required for the domain. Ada manages this with the concept of an index type, this allows arrays to be indexed using any scalar type and therefore can start from any value, even enumerations which includes character's. This should be retained as anything else is just lacking. I don't understand why nobody else has implemented this in a language, it's *so powerful*.

```orenda
a : array [x .. y, w .. z, ...] of type

// or

a : [x .. y, w .. z, ...] type
```

Where each range expressions (i.e. ```a .. b```) are of the same type.

I definitely think it's worth implementing arrays such that they can compete with [Fortran](https://www.moreisdifferent.com/2015/07/16/why-physicsts-still-use-fortran).
  * Should the arrays be row-major? What are the benefits here?

## Dynamic arrays

One of the biggest issues with Ada is the fact that there are no real dynamic arrays, it's a static language of course, but it can be a pain to handle. You can create new declare blocks easily enough and create a new array there, so that's a workaround.

In Jai, they allow this using this syntax.

```jai
b : [..] int;
```

## Indexing

```orenda
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

```orenda
a = b[1]
a[2 .. 5] = b[6 .. 9]
a[2 .. ] = b[6 .. ]
a[x1 .. y1, x2 .. y2] = b[x3 .. y3, x4 .. y4]
a[x1, x2 .. y1, y2] = b[x3, x4 .. y3, y4]

```

What if we do this?

```orenda
a = b[x3, x4 .. y3, y4]
```

What do this do? Create a new matrix a with the values copied from b.

## Vectors and Matrices

Having specialised types for these entities could make it easier to do specific optimisations, i.e. turning on SIMD instructions.

### Using extensible types for representation changes

It should be possible to use the extensible type system to handle changes in internal layouts, much like Ada can do with unpacked and packed records.

```orenda
type Matrix_GL is matrix [1 .. 4, 1 .. 4] of real with
  Column_Major

type Matrix_D3D is new Matrix_GL with
  Row_Major

a : Matrix_GL := ...
b : Matrix_D3D := a  // Have the compiler do the transposition.
```

Should the Matrix types not take ranges? Implicit range, matrices in maths start from 1. Same for vectors?

```orenda
type Matrix_GL is matrix [4, 4] of real with
  Column_Major

type Matrix_3x4 is matrix [3, 4] of real with
  Column_Major

v1 : vector [3] := ...
v2 : vector [4] := ...

type Vector_3 is vector [3] of real  // Implicit range, starts from 1.
```

If the matrix is implemented as a variant record of a matrix as above and a single dimension array, maybe even adding different representations, like an array of vector?

## Memory layout

* Column major
* Row major
* Defined at type definition time.
* Can be switched or converted?
* Jagged vs square, ability to switch using an aspect?

## SIMD

A new language can build in SIMD operations into the array handling.

## Ragged arrays

* [Stan](https://mc-stan.org/docs/2_21/stan-users-guide/ragged-data-structs-section.html)

```orenda
a : array [x .. y, w, z] of type
```

Define a ragged array of ```x .. y```, ```x .. w```, ```x .. z```, in reality it is a one dimensional array of ```x .. y + w + z``` with another array containing sizes.

