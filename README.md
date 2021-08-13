# Orenda: An experimental programming language

> Orenda: *noun*
> 1. a supernatural force believed by the Iroquois Indians to be present, in varying degrees, in all objects or persons, and to be the spiritual force by which human accomplishment is attained or accounted for.
>
> -- <cite>[Dictionary.com](https://www.dictionary.com/browse/orenda?s=t)</cite>

This is my attempt at creating a new programming language a bit at a time by experimenting with various ideas.

**N.B:** Nothing in this language is set in stone right now, it **is** likely to change.

This documentation will evolve over time until I get to a point whereby a new implementation, and therefore github project, will be started. Expect this documentation to be a bit rambly in places and maybe not even completely thought out.

## Background

Having used Ada a fair bit over the last 15 years, I've come to the conclusion that it's time to move to another language, but I want something like Ada, but smaller. There just isn't anything out there like this because every language "designer" out there just wants to remake C, but as Ginger Bill stated, "C is broken."

I have talked with other Ada users before about an Ada like language that takes the type system from Ada and adds it to a more Oberon like language. It's a subject which keeps coming up time and time again, so I have decided to give it a try; every programmer has at least one language they want to write, right?

After finally watching [Guy Steele's Growing a language](https://youtu.be/_ahvzDzKdB0), I realise that whilst the core language should be small, it should provide enough capability to extend the language itself.

## Key aspirations for the language

* Simple.
* Small.
* Composable.
* Make programming life easier.
## Documentation

These are my notes / ramblings:

1. [What I want](./docs/notes/what-i-want.md)
2. Oberon
   * [Basing it on Oberon 2](./docs/notes/oberon/basing-on-oberon2.md)
3. Lexical elements
   * [Comments](./docs/notes/lexical-elements/comments.md)
   * [Literals](./docs/notes/lexical-elements/literals.md)
   * [Strings](./docs/notes/lexical-elements/textual-data.md)
4. Type system
   * [Type Theory](./docs/notes/type-system/type-theory.md)
   * [Types](./docs/notes/type-system/types.md)
   * [Ranges](./docs/notes/type-system/ranges.md)
   * [Arrays](./docs/notes/type-system/arrays.md)
   * [Reference types](./docs/notes/type-system/reference-types.md)
   * [Reflection](./docs/notes/type-system/reflection.md)
5. [Functions](./docs/notes/functions.md)
6. [Modules](./docs/notes/modules.md)
7. [Parallelism and concurrency](/docs/notes/parallelism-concurrency.md)
8. [REPL](./docs/notes/repl.md)
9. [Target Specifics](./docs/notes/target-spoecifics.md)
10. [Lexer Grammar](./src/ExperimentalLexer.g4)
11. [Parser Grammar](./src/ExperimentalParser.g4)

## TODO

* [X] Give this thing a name.
* [ ] Create an AST.
* [ ] Add basic semantic analysis.
* [ ] Convert to LLVM IR.

### Languages to learn

Learn some more programming languages to see what ideas are out there and to also see how they work in that particular language. The following list shows a good selection, but in no way should they all be learnt, only where something of importance can be learned.

+ [ ] [Modula-2](https://en.wikipedia.org/wiki/Modula-2) (Imperative, structured, modular, data and procedure hiding, concurrent)
+ [ ] [Modula-3](https://en.wikipedia.org/wiki/Modula-3) (Imperative, structured, procedural, modular, concurrent)
+ [ ] [Oberon](https://en.wikipedia.org/wiki/Oberon_(programming_language)) (Imperative, structured, modular, object-oriented)
+ [ ] [Lisp](https://en.wikipedia.org/wiki/Lisp_(programming_language)) (Multi-paradigm: functional, procedural, reflective, meta)
+ [ ] [Scheme](https://en.wikipedia.org/wiki/Scheme_(programming_language)) (Multi-paradigm: functional, imperative, meta)
+ [ ] [S/ML](https://en.wikipedia.org/wiki/Standard_ML) (Multi-paradigm: functional, imperative, modular)
+ [ ] [OCaml](https://en.wikipedia.org/wiki/OCaml) (Multi-paradigm: functional, imperative, modular, object-oriented)
+ [ ] [Go](https://en.wikipedia.org/wiki/Go_(programming_language)) (Multi-paradigm: concurrent, functional, imperative, object-oriented)
+ [ ] [Rust](https://en.wikipedia.org/wiki/Rust_(programming_language)) (Multi-paradigm: concurrent, functional, generic, imperative, structured)
+ [ ] [F#](https://en.wikipedia.org/wiki/F_Sharp_(programming_language)) (Multi-paradigm: functional, imperative, object-oriented, metaprogramming, reflective, concurrent)
+ [ ] [Odin](https://odin-lang.org/) (Imperative)
+ [ ] [Dart](https://en.wikipedia.org/wiki/Dart_(programming_language)) (Multi-paradigm: functional, imperative, object-oriented, reflective)
+ [ ] [Swift](https://en.wikipedia.org/wiki/Swift_(programming_language)) (Multi-paradigm: protocol-oriented, object-oriented, functional, imperative, block structured, declarative)
+ [ ] [Kotlin](https://en.wikipedia.org/wiki/Kotlin_(programming_language)) (Multi-paradigm: object-oriented, functional, imperative, block structured, declarative, generic, reflective, concurrent)
+ [ ] [Elm](https://en.wikipedia.org/wiki/Elm_(programming_language)) (Functional)
+ [ ] [Scala](https://en.wikipedia.org/wiki/Scala_(programming_language)) (Multi-paradigm: concurrent, functional, imperative, object-oriented)
+ [ ] [ParaSail](https://en.wikipedia.org/wiki/ParaSail_(programming_language)) (Compiled, concurrent, imperative, structured, object-oriented)
+ [ ] [Idris](https://en.wikipedia.org/wiki/Idris_(programming_language)) (Functional)
+ [ ] [D](https://en.wikipedia.org/wiki/D_(programming_language)) (Multi-paradigm: functional, imperative, object-oriented)
+ [ ] [Nim](https://en.wikipedia.org/wiki/Nim_(programming_language)) (Multi-paradigm: compiled, concurrent, Procedural, Imperative, Functional, Object-oriented)
+ [ ] [Julia](https://en.wikipedia.org/wiki/Julia_(programming_language)) (Multi-paradigm: multiple dispatch (primary paradigm), procedural, functional, meta, multistaged)
+ [ ] [Haskell](https://en.wikipedia.org/wiki/Haskell_(programming_language)) (Purely functional)
+ [ ] [Prolog](https://en.wikipedia.org/wiki/Prolog) (Logic)
+ [ ] [Mercury](https://en.wikipedia.org/wiki/Mercury_(programming_language)) (Logic, functional, object-oriented)
+ [ ] [FORTH](https://en.wikipedia.org/wiki/Forth_(programming_language)) (Procedural, stack-oriented, reflective, concatenative)
+ [ ] [Smalltalk](https://en.wikipedia.org/wiki/Smalltalk) (Object-Oriented)
+ [ ] [Elixir](https://en.wikipedia.org/wiki/Elixir_(programming_language)) (Multi-paradigm: functional, concurrent, distributed, process-oriented)
+ [ ] [Bondi](https://web.archive.org/web/20210321002117/http://bondi.it.uts.edu.au/) (Pattern matching)
+ [ ] [APL](https://en.wikipedia.org/wiki/APL_(programming_language)) (Array, functional, structured, modular)
+ [ ] [BQN](https://github.com/mlochbaum/BQN) (Array, functional)
+ [ ] [J](https://en.wikipedia.org/wiki/J_(programming_language)) (Array)
+ [ ] [Joy](https://en.wikipedia.org/wiki/Joy_(programming_language)) (Multi-paradigm: functional, concatenative, stack-oriented)
+ [ ] [Zig](https://en.wikipedia.org/wiki/Zig_(programming_language)) (Multi-paradigm: imperative, concurrent, procedural, functional)
+ [ ] [Rebol](https://en.wikipedia.org/wiki/Rebol) (Language oriented programming, data exchange, functional, prototype-based, imperative)
  - [ ] [Red](https://en.wikipedia.org/wiki/Red_(programming_language)) (imperative, functional, symbolic)
+ [ ] [Io](https://en.wikipedia.org/wiki/Io_(programming_language)) (Object-oriented prototype-based)
+ One set of languages only exist on an emulator, UAE, these are:
   - [ ] [AMOS](https://en.wikipedia.org/wiki/AMOS_(programming_language)) (Imperative, Procedural)
   - [ ] [AmigaE](https://en.wikipedia.org/wiki/Amiga_E) (Structured, modular, Imperative, Object-Oriented, List Processing)

## Building

```bash
$ cmake -DANTLR_EXECUTABLE=<location of your ANTLR4 jar>
```

## Requirements

* A C++14 compiler.
* ANTLR4 (4.9-complete.jar)

## Tested with

* Clang 10
* GCC 9.3.0
* GCC 10.2.0

## [Current version](http://www.semver.org)

v0.0.130

## Contributions

I'm not accepting any PR's but I am happy to take advice, ideas or suggestions.

## Copyright

Copyright (C) 2020-2021 by Luke A. Guest

## Licence

[MPL 2.0](./LICENCE.txt)
