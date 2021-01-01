# Basing the language on Oberon 2

There is a good argument for basing the language on another, such as Oberon 2. The following shows the original Oberon 2 grammar and what a more Ada-like (or modernised) version could look like.

By basing the language on another one, I can get something going a little faster, but I don't have to stick to the original language in any way, therefore backwards compatibility is not required, which Patrik René et al have discovered<sup>[1](#1).</sup>.

The following is the original Oberon 2 grammar as shown in the Oberon 2 language report<sup>[2](#2).</sup>.

* [Oberon 2 Grammar](./oberon-2.ebnf)

What follows is the above grammar modified to have a more Ada-like feeling, this is a work in progress. I want to get it to the point whereby it can be implemented for the basic language, which would form the foundation that I can add the features I want.

The grammar is in EBNF, whereas the original is in Wirth Syntax Notation (WSN), they are similar with only a few differences.

* [Test Grammar](./test.ebnf)

## References

<a id="1">[1]</a>
Patrik René, Celeste Reali, 2003
[Using Oberon’s Active Objects for Language Interoperability and Compilation](https://www.research-collection.ethz.ch/handle/20.500.11850/72831).
Critique of the Oberon Language, Appendix B

<a id="2">[1]</a>
H. Mössenböck, N. Wirth, 1995
[The Programming Language Oberon−2](http://www.math.bas.bg/bantchev/place/oberon/Oberon2-Report.pdf)
Syntax of Oberon-2, Appendix B
