# An experimental language

My attempt at creating a new programming language a bit at a time by experimenting with various ideas.

## Background

Having used Ada a fair bit over the last 15 years, I've come to the conclusion that it's time to move to another language, but I want something like Ada, but smaller, there isn't anything out there like this.

After finally watching [Guy Steele's Growing a language](https://youtu.be/_ahvzDzKdB0), I realise that whilst the core language should be small, it should provide enough capability to extend the language.

## Documentation

These are my notes / ramblings:

1. [What I want](./docs/notes/what-i-want.md)
2. Lexical elements
   * [Comments](./docs/notes/lexical-elements/comments.md)
   * [Literals](./docs/notes/lexical-elements/literals.md)
   * [Strings](./docs/notes/lexical-elements/textual-data.md)
3. Type system
   * [Types](./docs/notes/type-system/types.md)
   * [Ranges](./docs/notes/type-system/ranges.md)
   * [Arrays](./docs/notes/type-system/arrays.md)
   * [Reference types](./docs/notes/type-system/reference-types.md)
   * [Reflection](./docs/notes/type-system/reflection.md)
4. [Functions](./docs/notes/functions.md)
5. [Parallelism and concurrency](/docs/notes/parallelism-concurrency.md)
6. [Lexer Grammar](./src/ExperimentalLexer.g4)
7. [Parser Grammar](./src/ExperimentalParser.g4)

## TODO

1. Give this thing a name.
2. Create an AST.
3. Add basic semantic analysis.
4. Convert to LLVM IR.

## Building

```bash
$ cmake -DANTLR_EXECUTABLE=<location of your ANTLR4 jar>
```

## Requirements

* A C++14 compiler.
* ANTLR4 (4.9-complete.jar)

## Tested with

* Clang 10.
* GCC 9.3.0

## [Current version](http://www.semver.org)

v0.0.32

## Contributions

I'm not accepting any PR's but I am happy to take advice, ideas or suggestions.

## Copyright

Copyright (C) 2020 by Luke A. Guest

## Licence

[MPL 2.0](./LICENCE.txt)
