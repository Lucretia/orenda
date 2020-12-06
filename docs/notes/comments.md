# Comments

Most languages are C based and utilise the standard block comment, ```/* ... */```. Some  languages allow comments to be nested and some don't. Nesting comments is a difficult thing to parse.

Other languages, including GCC's C compiler, has added C++'s single line comment, ```// ...```.

Other languages have different single line comments, ```# ...``` (Python, Ruby), ```; ...``` (Assembly language, Lisp), (), ```--``` (Ada, Haskell), etc.

Wirth loved to use a slightly more weird syntax, ```(* ... *)```, which I find difficult to type as it requires two hands.

## What to go for?

I will be going with a single line comment only, following Ada's lead here:

> Single comments that are larger than one line are not provided. Such comments would require a closing comment delimiter and this would again raise the dangers associated with the (unintentional) omission of the closing delimiter: entire sections of a program could be ignored by the compiler without the programmer realizing it, so that the program would not mean what he thinks.
>
> -- <cite>Ada 83 Rationale: Chapter 2.1</cite>

I have decided to use the C++ style double slash (```// ...```) as the comment delimiter, this is known by most people. Multiple lines can be commented and uncommented using any decent text editor or IDE by highlighting the block and using a keyboard shortcut.

## References

* [A comment comparison](https://en.wikipedia.org/wiki/Comparison_of_programming_languages_(syntax)#Comment_comparison)
* [Ada](https://www.adaic.org/resources/add_content/standards/05rm/html/RM-2-7.html)
* [Haskell](https://wiki.haskell.org/Commenting)
* [Lisp](https://stackoverflow.com/questions/6365334/lisp-commenting-convention)
* [Python](https://www.w3schools.com/python/python_comments.asp)
* [Ruby](https://www.tutorialspoint.com/ruby/ruby_comments.htm)
