## Strings

* Unicode.
* Based on arrays in the language.
  + Enables slicing.
* UTF-8.
* Iterators on various Unicode boundaries.
  + Grapheme(??) cluster.
  + Word.
* Extrapolation
  + Embed expressions into strings which are evaulated.
  + ```"expression: ${var1 + var2}"```
  + ```"expression: $var1"```
  + ```"expression: '{var1 + var2}"```
  + ```"expression: '(var1 + var2)"```
  + ```"expression: `(var1 + var2)" // Like ParaSail.```
* C-like escaped sequences?

## Refs

https://boyter.org/posts/unicode-support-what-does-that-actually-mean/