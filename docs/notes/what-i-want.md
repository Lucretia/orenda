# What do I really want in a language?

Is it better to start a new programming language by starting from scratch or by taking the grammar to an existing language and modifying it over time? Both ways are kind of difficult, for one reason or another.

I keep going back and forth on the issue about whether to start from the Oberon 2 grammar or from scratch. I have developed a basic grammar for a very simple subset without semi-colons from scratch, which can form the basis, but I may still change my mind.

Most new languages, such as Jai, Odin, Go, etc. were designed to replace C<sup>[1](#rust-note)</sup>; my intention is to replace Ada as my main language of choice. I've come to the conclusion that I really want something smaller and easier to develop with. I really like the language, but it is a huge language, on the scale of C++ huge.

I intend to use other languages as inspiration, but I do want something smaller than what I've been using, which is Ada. I do think that for people to even look at the language, they need to feel that it is somewhat familiar, I'm not going for what everyone else is doing, i.e. developing a new C or C++ replacement.

I want the following things:

* A replacement for Ada, but adhering to the same principles.
  * Model the domain, not the machine. i.e. the difference between the compiler handling the data sizes and the programmer having to specify a machine type, int32, in64, float, double, etc.
* A **readable**, nice syntax. Wirthian in style, but not exactly his as I'm not a fan of his semi-colon and uppercase keyword usage. I will do what Ada did and make it a bit more consistent. I will also use other influences.
* Like other people developing other languages, I want get pleasure from developing software again.
* Small core language containing **orthogonal** concepts.
* Highly portable.
* Concurrency / parallelism capabilities baked into the language.
* Type system:
  * Strong static.
  * No pointers:
    * But still able to assign address to objects.
  * Enumerations.
  * Array operations, useful for games and scientific applications:
    * Better array handling than Ada, it's often frustrating to use Ada's arrays.
    * Vector and matrix types.
    * Swizzling.
    * Multi-dimensional slicing?
    * Tensors?
  * Saturated types? Useful for embedded, audio type work.
  * Changing representation by creating a new type? e.g. changing from SOA to AOS and vice versa, similar to packed/unpacked conversions in Ada.
  * SIMD specific types? Useful for 3D.
* Unicode:
  * It's the 21st century and we need to support this.
  * The program source should be Unicode.
  * Unicode character/rune and string types by default.
* General purpose systems programming language. I want to be able to program the following:
  * Mobile.
  * Embedded.
  * Bare metal.
  * Desktop / Server.
* High-level, but capable of handling low-level work easily.
  * No global variables/data, they should all be encapsulated within modules.
* Memory management:
  * Handled by the language environment.
  * No garbage collection (GC).
* Lower case keywords, *cough* Oberon *cough*.
* Generics.
* Hierarchical modules, like Ada's, e.g. ```<lib>.OS```, ```<lib>.OS.Linux```, ```<lib>.FFI.C```, ```<lib>.System```.
* Uniform Function Call Syntax (UFCS).
* Named parameter associations.
* Traits:
  * Objects can be built out of traits.
  * Could handle object-orientation without having object-orientation built in.
    * Operations can be denoted using Oberon/Go style type bound procedures/functions.
    * Would need an interface mechanism.
  * Can we do dynamic dispatch? Probably not.
  * OOP is not inherently bad, just Java style "Everything is an object" is.
* Better C interop than Ada. Currently, there is a lot work that has to be done when binding C in Ada, especially when developing thick bindings.
  * A proper C string type.
  * Binding generation done by Clang.
  * Check how Odin does it.
  * We need to support variabel argument lists, at least for C interoperation.
* Use known comment syntax, one line comments using "//" or "--"
* Inequality symbol should be either "/=" or "!=". By using the latter it's immediately known from other languages.
* Error handling:
  * Exceptions?
  * Multiple return values?
  * WTF is naked return?? (Odin/Go?)
* More flexible ranges? ```[]```, ```(]```. ```[)```, etc.
* Multi-paradigm.
* Metaprogramming:
  * Type level reflection, like Ada's attribute syntax, using ```?``` query operator.
  * Reflection? Being able to manipulate the data and types of the running program at runtime?
    * Optimisation will affect this, functions can be inlined and no longer be present.
  * Extensible via macros?
* No "begin" keyword.
* Only one way to do the same thing.
* Lambda functions?
* First class functions?
* Ultimately, no semi-colons.
* I disagree with this new one loop only fad.
  * I certainly don't want to incorporate C's terrible for loop "design."
* I considered a swap operator ```<=>``` which would be nice and short, Odin does this with ```a, b = b, a;``` due to be able to handle multiple variables at a time.
  * a <=> b
  * a, b <=> b, a
  * c, a, b <=> b, c, a
  * etc.
    * To be able to overload this operator, the language would need to be able to handle variable argument lists built into the language to be able to handle multiple return types.
* A new language needs a set of containers, it's just whether they should be part of the language as keywords/syntax or as external libraries in the runtime:
  * Arrays.
  * Maps / Dictionaries.
  * Sets, they can be implemented using packed arrays of booleans, like in Ada.
  * Lists.

## Syntax I want to see

I don't want to use braces as these are very difficult to see, especially when you're tired. Bad tools and wreck the formatting making finding the correct closing brace even more difficult to see. The use of "end" on it's own is just as bad, especially for being able to tell which closing block or construct you are looking at.

Autocompletion in an editor can alleviate the typing for the lazy.

## Other language ideas

* [No operator precedence in Fortress](https://youtu.be/hUQKaTH9TMo?t=13740)
  - From same talk about 4:00:00, "pushing past language type systems to prove safety"
* JDK 16 RNG

### Language library as a database

I considered this to be a dead idea from Ada83 and not a good one until was I informed that having the library in a database could make for a development environment where you can be constantly running with minimal compiles. He likened it to Lisp and Smalltalk development.

I had been thinking about how to have a toolchain which could be built into running applications.

> working with a live system all the time, change and tweak while it is running
>
> -- <cite>David Botton</cite>


## References

[less is more language features](https://blog.ploeh.dk/2015/04/13/less-is-more-language-features)

---
<a name="rust-note">[1]</a>: Rust was developed to replace C++.

