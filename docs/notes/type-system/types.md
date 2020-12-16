# Type system

## Goals

* Query the type systems with the query operator, ```?```. Similar to Ada's attributes.

## Notes

* ```integer``` and ```real```, the compiler will detect size and determine which
* actual type it gets, i.e. a base machine type or a library bignum type.
*
* Escaped characters? ```\r, \n``` etc.
* Escaped Unicode? ```\16#1234_5678```.
* Dispatching on return types is very useful and an underrated feature of Ada.

## References/Pointers

* [Cone MM](https://pling.jondgoodwin.com/post/reference-lifecycle)
* [Basil MM](https://www.reddit.com/r/ProgrammingLanguages/comments/gwn0r9/experimenting_with_memory_management_for_basil)
* [Arena / region](https://en.wikipedia.org/wiki/Region-based_memory_management)
