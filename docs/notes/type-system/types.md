# Type system

I want this language to have a strong static type system, I don't want implicit conversions everywhere, like C has, that's a huge cause of many bugs. We know this kind of type system can alleviate these bugs. I don't think it's any coincidence that other newer languages are taking this route.

It should be possible to query types for various information, like upper and lower values allowed, it's type name, an enumeration's value as a string. This would be handled in a similar way to Ada's attribute system, Ada uses the apostrophe, e.g.

```ada
Lower : constant := T'First;
```

I was considering using the question mark instead, to denot this query, as that makes sense, but it's harder to read, as can be seen here.

```exp
s := a?upper
S := A?Upper
```

Maybe adding spacing would work?

```exp
s := a? upper
S := A? Upper
s := a ?upper
S := A ?Upper
```

Other languages that implement this kind of reflection just use the dot and make it look more like an operation or a method call. As can be seen in Jai here.

```jai
printf("  name: %s\n", it.name);
```

Or in Odin.

```odin
import "core:reflect"
...
names := reflect.struct_field_names(id);
```

Other languages do use the question mark for testing nullable or option types. [Swift](https://en.wikipedia.org/wiki/Option_type#Swift) is one example.

Go uses it for [optional parameter](https://basarat.gitbook.io/typescript/type-system/functions#optional-parameters).

What other options are there? The apostrophe would force the lexical analyser of the compiler to have multiple look ahead and push back in the case of characters, especially Unicode.

```exp
s := a.upper  // Really should look different to normal operations.
s := a#upper  // Similar to ?, harder to read.
s := a^upper  // Pascal's pointer dereference.
s := a`upper  // Lisp's back tick?
s := a~upper  // Something different altogether?
s := a:upper  // Not too bad.
s := a%upper  // Hard to read.
```

## Built in types

There needs to be convenience types available, but the emphasis should be in defining your own types. These can be ```integer``` and ```float``` (or ```real```). In addition to these, there should be a ```boolean``` type.

As mentioned in the arrays document, it would be useful to be able to specify SIMD types, depending on which version, AVX, SSE4.2, etc. depends on how many registers you get access to and what bit size they are. This is definitely a a future feature once the basics of the language are defined.

## Notes

* Variables/constants should be initialised to a known value.
* Variables/constants should be non-mutable by default.
* Dispatching on return types is very useful and an underrated feature of Ada.

## References/Pointers

* [Cone MM](https://pling.jondgoodwin.com/post/reference-lifecycle)
* [Basil MM](https://www.reddit.com/r/ProgrammingLanguages/comments/gwn0r9/experimenting_with_memory_management_for_basil)
* [Arena / region](https://en.wikipedia.org/wiki/Region-based_memory_management)
