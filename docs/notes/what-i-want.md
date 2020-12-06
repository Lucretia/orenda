# What do I really want in a language?

Maybe this isn't the best place to start, maybe it is. But I think if I'm going to implement a programming language, it might be wise to start by butching an existing small language. For that, I'm starting from scratch and will develop grammar as I go.

I intend to use other languages as inspiration, but I do want something smaller than what I've been using, which is Ada. I do think that for people to even look at the language, they need to feel that it is somewhat familiar, I'm not going for what everyone else is doing, i.e. developing a new C or C++ replacement.

I want the following things:

* A replacement for Ada.
* General purpose.
* Multi-paradigm.
* A readable, nice syntax.
* High-level, but capable of handling low-level work easily.
* Highly portability.
* Small core language.
* Extensible via macros?
* No pointers.
  + But still able to assign address to objects.
* No global variables/data.
* No garbage collection (GC).
* No exceptions.
* No "begin" keyword.
* Lower case keywords.
* Only one way to do the same thing.
* Concurrency / parallelism capabilities.
* Unicode.
* Enumerations.
* Generics.
* Hierarchical modules, like Ada's, e.g. ```<lib>.OS```, ```<lib>.OS.Linux```, ```<lib>.FFI.C```, ```<lib>.System```.
* Uniform Function Call Syntax (UFCS).
* Named parameter associations.
* Lambda functions?
* Use known comment syntax, one line comments using "//" or "--"
* Inequality symbol should be either "/=" or "!="
* Ultimately, no semi-colons.
* Vector and matrix types with swizzling?
* Saturated types?
* Tensors?
* Better array handling than Ada, it's often frustrating to use Ada's arrays.

## Syntax I want to see

I don't want to use braces as these are very difficult to see, especially when you're tired. Bad tools and wreck the formatting making finding the correct closing brace even more difficult to see. The use of "end" on it's own is just as bad, especially for being able to tell which closing block or construct you are looking at.

I want to see this:

```

function name is
    if ... then
        ...
    end if
end function name
```

Autocompletion in an editor can aleviate the typing for the lazy.

## Other language ideas

* [No operator precedence in Fortress](https://youtu.be/hUQKaTH9TMo?t=13740)
  - From same talk about 4:00:00, "pushing past language type systems to prove safety"
* JDK 16 RNG

## Refs

https://blog.ploeh.dk/2015/04/13/less-is-more-language-features/
