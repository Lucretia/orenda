# Reference Types

A programming language has to deal with value and reference types. Value types fit into registers and can be copied freely, sometimes larger objects are also passed as value types. Reference types are generally larger structures like arrays and records which are passed by reference.

Also, there are reference types in parameter passing especially where you want to modify a variable which is passed in as a parameter, some languages like C force you use to pointers as there is no other way, Ada allows ```out``` and ```in out``` parameter modes.

We cannot get away from references, but we can get away with a language which handles them for us, which doesn't have the concept of a pointer. There are issues to overcome here, like for an embedded device, how would you set the address of a variable so it maps to a memory mapped IO port? This can be handled using the reflect/attribute syntax like so.

```exp
port_a:address := 0x_ffff_1000 // Set a's address
...
port_a := 0x_ffef_deba  // Automatic dereferencing.
...
some_value   := port_a
some_address := port_a:address
```

What would happen with a larger object? What about aliases? What about passing references to functions as parameters? What about storing them in containers?

## Goals

* Still able to assign address to objects.
* Safely share memory?
* Assigning references?
  * Ref count?
  * Rust-like ownership?
