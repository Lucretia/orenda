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

* Internally encoded as UTF-8.
* Based on arrays of ```octet's``` in the language.
  * Enables slicing.
* Iterators on various Unicode boundaries.
  * Grapheme(??) cluster.
  * Word.
* Extrapolation
  * Embed expressions into strings which are evaluated.
  * ```"expression: ${var1 + var2}"```
  * ```"expression: $var1"```
  * ```"expression: '{var1 + var2}"```
  * ```"expression: '(var1 + var2)"```
  * ```"expression: `(var1 + var2)" // Like ParaSail.```
* C-like escaped sequences?

## What to go for?

A string is an array of octets which are 8-bit.

There will be a requirement to allow the programmer to iterate over the string array in various units, i.e. code units (octets), code points (runes), grapheme clusters, etc.

The length of a string is the number of octets in a string.

## References

* [unicode support what does that actually mean](https://boyter.org/posts/unicode-support-what-does-that-actually-mean)
* [UTF8 Everywhere](http://utf8everywhere.org)

<a name="bom-note">[1]</a>: I will never support a BOM in UTF-8 streams! There is no endianness issues with this format, adding a BOM doesn't make sense, see UTF8 Everywhere, above.
