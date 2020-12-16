# Textual data

## Characters

As the source files will be written in Unicode, UTF-8 (no BOM<sup>[1](#bom-note)</sup>), to be precise, it's necessary for string literals to be able to contain unicode codepoints.

There is no such thing as a character any more, only code points, and each "character" can be composed of multiple codepoints. But it is required to handle codepoints, but what should the data type be called? There are a few options:

* ```char``` or ```character```? As I said above, they don't really exist anymore.
* ```code_point```? A bit longer than the above.
* ```rune```? This is what newer languages such as Go and Odin are using, it kind of fits the definition of a codepoint I suppose.

### Literals

```exp
'A'
'3'
'λ'          // Lambda.
'π'          // Pi.
'\0x_32_C8`  // Idiographic telegraph symbol for September, ㋈.
'\16#A8_F6#' // Devanagari sign candrabindu three, ꣶ.
```

## What to go for?

A ```rune``` represents a 32-bit code point with a value between ```0x_0000 .. 0x_10_FFFF```.

## Strings

### Internal representation

* Internally encoded as UTF-8.
* Based on arrays of ```octet's``` in the language.
  * Enables slicing.
* Array bounds can be denoted as a dope vector (check terminology) at the start of the string when it's allocated, this is known as a Pascal string.
* The length is denoted as the array's ```last index - first index```.
* An easy way to convert to a C string is to include a ```NUL``` byte at the end of each string.

### Interpolation

It should be possible to allow the output of expressions into strings, the following syntax options could be used.

1. ```"expression: $var"```
2. ```"expression: 'var"```
3. ```"expression: `var"```
4. ```"expression: ${var1 + var2}"```
5. ```"expression: '{var1 + var2}"```
6. ```"expression: '(var1 + var2)"```
7. ```"expression: `(var1 + var2)" // Like ParaSail.```

It makes sense to be able to insert single values and to also perform arithmetic, therefore having a way to signify a single (1-3) variable and a way to encapsulate multiple values (4-7), is necessary. The dollar (```$```) symbol has been used to denote variables in many languages including BASIC and Ruby. Using the a tick of some sort is reminiscent of languages like the various Lisp's.

Another method is to use the C method by passing parameters after the string and using position markers inside the string, like Rust does<sup>[2](#rust-fmt-note)</sup>.

```rust
format!("Hello, {}!", "world");   // => "Hello, world!"
format!("The number is {}", 1);   // => "The number is 1"
format!("{:?}", (3, 4));          // => "(3, 4)"
format!("{value}", value=4);      // => "4"
format!("{} {}", 1, 2);           // => "1 2"
format!("{:04}", 42);             // => "0042" with leading zeros
```

### Other

* Iterators on various Unicode boundaries.
  * Grapheme(??) cluster.
  * Word.
* C-like escaped sequences?
* Non-mutable?

## What to go for?

A string is an array of octets which are 8-bit.

There will be a requirement to allow the programmer to iterate over the string array in various units, i.e. code units (octets), code points (runes), grapheme clusters, etc.

The length of a string is the number of octets in a string.

## References

* [unicode support what does that actually mean](https://boyter.org/posts/unicode-support-what-does-that-actually-mean)
* [UTF8 Everywhere](http://utf8everywhere.org)

<a name="bom-note">[1]</a>: I will never support a BOM in UTF-8 streams! There is no endianness issues with this format, adding a BOM doesn't make sense, see UTF8 Everywhere, above.

<a name="rust-fmt-note">[2]</a>: <a href="https://doc.rust-lang.org/std/fmt">Rust: fmt</a>