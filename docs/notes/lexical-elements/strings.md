# Strings

* Unicode.
  * No such thing as a character anymore, only code points, but what should the data type be called?
    * ```code_point```?
    * ```character```?
    * ```rune```?
* Based on arrays in the language.
  * Enables slicing.
* UTF-8.
* Iterators on various Unicode boundaries.
  * Grapheme(??) cluster.
  * Word.
* Extrapolation
  * Embed expressions into strings which are evaulated.
  * ```"expression: ${var1 + var2}"```
  * ```"expression: $var1"```
  * ```"expression: '{var1 + var2}"```
  * ```"expression: '(var1 + var2)"```
  * ```"expression: `(var1 + var2)" // Like ParaSail.```
* C-like escaped sequences?

## References

* [unicode support what does that actually mean](https://boyter.org/posts/unicode-support-what-does-that-actually-mean)
