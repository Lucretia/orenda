# Literals

All programming languages require the use of numbers of various forms. All programming languages choose to define these differently, but the C style languages tend to use the C style formatting. I'll compare them here and see what I like.

## Ada

Ada has decimal numbers by default, no need to add any base notation, e.g. ```101```, ```3.14```, ```25.4E-2```, etc.

Ada can also create based numbers by appending a base number and then enclosing the actual literal within hash marks, e.g. ```16#fffe#```, ```8#754#```, ```2#1001#```, etc.

Ada also uses the underscore to separate digits for readability, e.g. ```16#DEAD_BEEF#```.

## C

C utilises quite a simplistic and not very consistent method to define literals, e.g. ```101```, ```0754```, ```0xDEADBEEF```, etc. The issue with C is that you also have to specify a suffix to numbers to say if something is long (```l```), unsigned long (```ul```), float (```f```), double (```d```), etc.

## C++

C is a superset of C, so it takes what C has and adds more. C++14 has added the ```0b``` prefix which makes it consistent with respect to hex literals. C++14 also added the apostrophe as a digit separator which I imagine would make creating a scanner even more difficult than it already is.

## C#

Basically as for C, except there is no octal support.

## D

Similar to C, but Walter Bright did add the underscore from Ada as a separator.

## Go

Go utlises something similar to Parasail with the addition of allowing underscores between the prefix and the digits, e.g. ```0b_1001_1110```, ```0x_DEAD_Beef```, which I think is very readable.

## Java

Essentially the same as C.

## Odin

Here's a weird one. It's essentially got the prefix that C has, no suffixes as the compiler can infer the size from the literal given. It also adds prefixes for decimal and dozenal<sup>[1](#duodecimal-note)</sup> (which is a new on me), ```0d``` and ```0z``` respectively.

## Parasail

Parasail is influenced by Ada as it is developed by someone who has worked on Ada compilers for a long time, so they include Ada's based numerals, they've retained the underscore, but also added literals similar to C style languages, e.g. ```0b1001_1011```, ```0xdead_beef```, etc.

## Rust

Again, similar to C, has included underscores for separators, but has different suffixes, using the data types in the language, e.g. ```u32```, ```i16```, etc.

## What to go for?

I like the fact that Go has allowed the underscore between the prefix and the literal, that aids in readability. Without it, the number seems too cramped.

I know that the ```0x``` is meant to mean hex and everyone knows that and that the x is from the word hexadecimal, but I do wonder why it's not ```0h```?

```exp
0hdead_beef
0h_dead_beef
```

You'd think that would be more consistent, but it does look odd.

I have always liked Ada's method, other languages have taken the underscore as it makes sense:

```ada
   A : Integer := 16#ff_ff#;   --  Fine.
   B : Integer := 16#_ffff_#;  --  Error.
   B : Integer := 16# ffff #;  --  Error.
```

Ada doesn't support adding an underscore nor a space between the hashes and the literal. If the editor has syntax highlighting to show the hashes as different colours that helps with the readability of these.

A strong statically compiled language should never need any kind of suffix, Ada and Odin don't, I won't.

I could take the combination approach of Parasail, allow the Go style prefix and the Ada style based literals. But this does go against the "one way to do things."

Going with the based numeral from Ada, allows exotic base systems, such as the duodecimal as noted above and base 36 and base 64. GNAT (Ada) allows bases 2-16.

```bash
$ ~/opt/free-ada-9.2.0/bin/gnatmake -c test.adb
gcc -c test.adb
test.adb:2:19: base not 2-16
gnatmake: "test.adb" compilation error
```

# What have I gone for?

In Orenda decimals can be specified with a base in Ada-like or a Cish-like manner.

```orenda
// Normal decimal literals.
10
100_000

// Decimals with specified bases.
2#100_0_11_11#
8#677#
16#dead_BEEF#

16# 1f #
7# 66_4#
16# FF_EE #
```

As can be seen in the above code, a space can be placed after the hash following the base or before the final hash, this aids in readability.

In the following Cish-like literals, an underscore can be placed between the base and the number, again, for readability.

```orenda
// Binary literals.
0b1010_1100
0b_1010_1100
0b1_110_01_10

// Octal literals.
0o664
0o6_6_4
0O_664

// Hexadecimal literals.
0xdead
0x_da_ff
0XFAFF
```

Real numbers are specified in a similar manner.

```orenda
3.14

400_0.14e34_0

10.2E-7
```

Identifiers are specified as follows.

```orenda
Orenda
This_Is_An_Identifier
this_is_another_one
ThisIsAnother
thisCanBeToo

Id1.Id2.Id3
```

As can be seen above, qualified identifiers are composed of multiple identifiers separated with dots.

Unicode is built into the language and all source is Unicode, UTF-8. Like C there are certain escape sequences (to be expanded upon).

```orenda
// Runes.

'\n'
'\t'
'\u20c3'
'g'
' '
'λ'
'ᱟ'
// This is a tab character '   '
'\t'
//'''
'\''
//'"'
'\"'
''
'😂'

// Strings.

""
" "
"\tHello\n"
"मैं काँच खा सकता हूँ और मुझे उससे कोई चोट नहीं पहुंचती"
"\""
//"""
//"'"
"\"Hello\" 😂 \u20c3"
```

## References

* [Ada](http://www.ada-auth.org/standards/2xrm/html/RM-2-4-1.html)
* [C](https://www.tutorialspoint.com/cprogramming/c_constants.htm)
* [C#](https://www.tutorialspoint.com/csharp/csharp_constants.htm)
* [C++](https://en.cppreference.com/w/cpp/language/user_literal)
* [D](https://www.tutorialspoint.com/d_programming/d_programming_literals.htm)
* [Go](https://www.i-programmer.info/news/98-languages/13066-go-modernizes-number-literals.html)
* [Java](https://www.geeksforgeeks.org/literals-in-java/)
* [Odin](https://odin-lang.org/ref/spec/#integer-literals)
* [Parasail](https://adacore.github.io/ParaSail/images/parasail_ref_manual.pdf)
* [Rust](https://doc.rust-lang.org/rust-by-example/primitives/literals.html)

* <a name="duodecimal-note">[1](https://en.wikipedia.org/wiki/Duodecimal)</a>: Duodecimal
