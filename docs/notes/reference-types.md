# Reference Types

## Goals

* Still able to assign address to objects.
* Safely share memory?
* Assigning references?
  + Ref count?
  + Rust-like ownership?

```
// Get address of b and assign to a.
// Rust move / borrow semantics? Does b become unusable now?
a : integer = b?address

// What happens if I do this?
b = 4 // ??
```