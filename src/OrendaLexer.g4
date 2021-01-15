lexer grammar OrendaLexer;

// Define extra channels so that the things we usually discard can be used in other tools, like comment extraction or
// pretty printing source.
channels { WHITESPACE, COMMENTS }

// Numbers.

INTEGER_LITERAL :   NUMERAL (EXPONENT)? ;

REAL_LITERAL    :   NUMERAL DOT NUMERAL (EXPONENT)? ;

fragment
NUMERAL         :   DIGIT (UNDERSCORE? DIGIT)* ;

fragment
EXPONENT        :   [Ee] MINUS? NUMERAL ;

fragment
DIGIT           :   [0-9] ;

BASED_LITERAL   :   BASE HASH BASED_NUMERAL (DOT BASED_NUMERAL)? HASH (EXPONENT)? ;

fragment
BASE            :   NUMERAL ;

fragment
BASED_NUMERAL   :   EXT_DIGIT (UNDERSCORE? EXT_DIGIT)* ;

fragment
EXT_DIGIT       :   DIGIT | [a-fA-F] ;

// Keywords.
END         :   'end' ;
FUNCTION    :   'function' ;
IMPORT      :   'import' ;
IS          :   'is' ;
MODULE      :   'module' ;
RETURN      :   'return' ;
TYPE        :   'type' ;
VAR         :   'var' ;

// Identifiers.

fragment
LETTER_UPPERCASE  : [\p{Lu}] ;

fragment
LETTER_LOWERCASE  : [\p{Ll}] ;

fragment
LETTER_TITLECASE  : [\p{Lt}] ;

fragment
LETTER_MODIFIER   : [\p{Lm}] ;

fragment
LETTER_OTHER      : [\p{Lo}] ;

fragment
NUMBER_LETTER     : [\p{Nl}] ;

fragment
MARK_NON_SPACING        : [\p{Mn}] ;

fragment
MARK_SPACING_COMBINING  : [\p{Mc}] ;

fragment
NUMBER_DECIMAL          : [\p{Nd}] ;

fragment
PUNCTUATION_CONNECTOR   : [\p{Pc}] ;

fragment
ID_START    :   ( LETTER_UPPERCASE
                | LETTER_LOWERCASE
                | LETTER_TITLECASE
                | LETTER_MODIFIER
                | LETTER_OTHER
                | NUMBER_LETTER
                )
                ;

fragment
ID_EXTEND   :   ( MARK_NON_SPACING
                | MARK_SPACING_COMBINING
                | NUMBER_DECIMAL
                | PUNCTUATION_CONNECTOR
                )
                ;

ID          :   ID_START ( ID_START | ID_EXTEND )*
            ;

// Symbols.
HASH        :   '#' ;

PLUS        :   '+' ;
MINUS       :   '-' ;
TIMES       :   '*' ;
DIVIDE      :   '/' ;
CARET       :   '^' ;
COLON       :   ':' ;
SEMICOLON   :   ';' ;
DOT         :   '.' ;
UNDERSCORE  :   '_' ;
TYPE_QUERY  :   '?' ;
LEFT_PAREN  :   '(' ;
RIGHT_PAREN :   ')' ;
COMMA       :   ',' ;
EQUALS      :   '=' ;
DIARESIS    :   '..' ;

NL          :   '\n' | '\r' '\n' ;

WS          :   [ \t\f]+ -> channel(WHITESPACE) ;

COMMENT     :   '//' ~[\r\n]* -> channel(COMMENTS) ;
