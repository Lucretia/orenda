# Grammar

* Terminals (tokens) in double quotes, ""
* Optional []
* Zero or more {}

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
 * Experiment with maths formulae type expressions, like Julia.
 * ```2pi * r``` and ```2x + y```
 *)
expr ::= literal ;

types ::= identifier ;

```
