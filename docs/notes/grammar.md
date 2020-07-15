* Terminals (tokens) in double quotes, ""
* Optional []
* Zero or more {}

----

* ```integer``` and ```real```, the compiler will detect size and determine which
* actual type it gets, i.e. a base machine type or a library bignum type.
*
* char? Best name, characters don't really exist anymore.? Do we like rune
* better? code_point?
*
* string, will be Unicode
*
* Escaped characters? ```\r, \n``` etc.
* Escaped Unicode? ```\16#1234_5678```.

----

```ebnf
new-line ::= '\n' ;

comment ::= "//" .* new-line ;

literal ::= integer-literal | real-literal | char-literal | string-literal ;

integer-literal ::= (* TODO *) ;
real-literal ::= (* TODO *) ;
char-literal ::= (* TODO *) ;
string-literal ::= (* TODO *) ;

(* Unicode *)
identifier ::= (* TODO *) ;

start ::= function | {module} ;

function ::= "function" identifier [parameters] "is" new-line
                statement-sequence new-line
             "end" "function" identifier new-line ;

parameters ::= "(" ")" ;

function-list ::= function new-line {function new-line} ;

module ::= import-list new-line
           "module" identifier "is" new-line
              function-list
           "end" "module" identifier new-line ;

import-list ::= import new-line {import new-line} ;

import ::= "import" identifier {"," identifier} new-line ;

statement-sequence ::= statement {new-line statement} ;

statement ::= {
               type-statement
           |   variable-decl
           |   assignment-statement
           } ;

type-statement ::= "type" identifier "is" range-type ;

assignment-statement ::= identifier "=" expr ;

range-type ::= number ".." number ;

variable-decl ::= "var" (* TODO? *) ":" identifier "=" expr ;

(* TODO:
 *
 * Experiment with maths forumlae type expressions, like Julia.
 * ```2pi * r``` and ```2x + y```
 *)
expr ::= literal ;

types ::= identifier ;

```