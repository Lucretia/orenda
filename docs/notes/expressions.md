# Expressions

* ```~``` Is mentioned in the Oberon manual as a logical negation, but it's not in the grammar.
* Reformulate the grammar for expressions?

## Oberon's syntax

After having moved over the grammar into the ANTLR4 grammar, I found that a simple expression such as ```5 * -2``` doesn't parse and has to be parsed as ```5 * (-2)```. I can only assume at this point that the unary operators don't bind at a high enough precedence, a conclusion that even the authors of the ActiveOberon report have come to. This syntax is also what Ada uses, I just didn't really realise as I've not used it for a while.

```ada
procedure Test is
   a : integer := 5 * -2;
begin
   null;
end;
```

```bash
$ gnatmake test.adb
gcc -c test.adb
test.adb:2:23: parentheses required for unary minus
gnatmake: "test.adb" compilation error
```
