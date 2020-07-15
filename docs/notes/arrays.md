# Arrays

```
array [x .. y, w .. z, ...] of type
```

Where each range expressions (i.e. ```a .. b```) are of the same type.

or

```
?
```


## Indexing

```
a[3]

// multiple dimensions:
a[3,3]

// or
a[3][3]
```

## Slicing

### Multi-dimensional array slicing

* For 1D:
  + Copy data from one slice into another slice.
* for nD:
  + Creates a new array object and copies the data across.
* Do we need to shared the slice at all?

```
a = b[1]
a[2 .. 5] = b[6 .. 9]
a[2 .. ] = b[6 .. ]
a[x1 .. y1, x2 .. y2] = b[x3 .. y3, x4 .. y4]
a[x1, x2 .. y1, y2] = b[x3, x4 .. y3, y4]

```

What if we do this?

```
a = b[x3, x4 .. y3, y4]
```

What do this do? Create a new matrix a with the values copied from b.

## Memory layout

* Column major
* Row major
* Defined at type definition time.
* Can be switched or converted?
