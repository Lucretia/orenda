# An experimental language

My attempt at creating a new programming language a bit at a time by experimenting with various ideas.

## Background

Having used Ada a fair bit over the last 15 years, I've come to the conclusion that it's time to move to another language, but I want something like Ada, but smaller, there isn't anything out there like this.

After finally watching [Guy Steele's Growing a language](https://youtu.be/_ahvzDzKdB0), I realise that whilst the core language should be small, it should provide enough capability to extend the language.

# Documentation

These are my notes / ramblings:

1. [What I want](./docs/notes/what-i-want.md)
2. [Functions](./docs/notes/functions.md)
3. [Type system](./docs/notes/type-system.md)
4. [Strings](./docs/notes/strings.md)
5. [Ranges](./docs/notes/ranges.md)
6. [Arrays](./docs/notes/arrays.md)
7. [Reference types](./docs/notes/reference-types.md)
8. [Grammar](./docs/notes/grammar.md)

# Building

```bash
$ cmake
```

## Tested with

* Clang 10.
* GCC 9.3.0

# Contributions

I'm not accepting any PR's but I am happy to take advice, ideas or suggestions.

# Copyright

Copyright (C) 2020 by Luke A. Guest

# Licence

[MPL 2.0](./LICENCE.txt)