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
6. [Parallelism and concurrency](/docs/notes/parallelism-concurrency.md)
7. [Lexer Grammar](./src/ExperimentalLexer.g4)
8. [Parser Grammar](./src/ExperimentalParser.g4)

## TODO

* [X] Give this thing a name.
* [ ] Create an AST.
* [ ] Add basic semantic analysis.
* [ ] Convert to LLVM IR.

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
