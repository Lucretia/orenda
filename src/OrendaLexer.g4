lexer grammar OrendaLexer;

// Define extra channels so that the things we usually discard can be used in other tools, like comment extraction or
// pretty printing source.
channels { WHITESPACE, COMMENTS }

// Numbers.
INTEGER_LITERAL :   NUMERAL ;

fragment
NUMERAL         :   DIGIT (UNDERSCORE? DIGIT)* ;

fragment
DIGIT           :   [0-9] ;

// Decimals with explicit bases.
BASED_LITERAL   :   BASE HASH [ ]? BASED_NUMERAL (DOT BASED_NUMERAL)? [ ]? HASH ;

fragment
BASE            :   NUMERAL ;

fragment
BASED_NUMERAL   :   EXT_DIGIT (UNDERSCORE? EXT_DIGIT)* ;

fragment
EXT_DIGIT       :   DIGIT | [a-fA-F] ;

// Binary.
BINARY_LITERAL  :   '0' [bB] UNDERSCORE? BINARY_NUMERAL ;

fragment
BINARY_NUMERAL  :   BINARY_DIGIT (UNDERSCORE? BINARY_DIGIT)* ;

fragment
BINARY_DIGIT    :   [0-1] ;

// Octal.
OCTAL_LITERAL   :   '0' [oO] UNDERSCORE? OCTAL_NUMERAL ;

fragment
OCTAL_NUMERAL   :   OCTAL_DIGIT (UNDERSCORE? OCTAL_DIGIT)* ;

fragment
OCTAL_DIGIT     :   [0-7] ;

// Hex.
HEX_LITERAL   :   '0' [xX] UNDERSCORE? HEX_NUMERAL ;

fragment
HEX_NUMERAL     :   HEX_DIGIT (UNDERSCORE? HEX_DIGIT)* ;

fragment
HEX_DIGIT       :   DIGIT | [a-fA-F] ;

// Real.
REAL_LITERAL    :   NUMERAL DOT NUMERAL (EXPONENT)? ;

fragment
EXPONENT        :   [Ee] MINUS? NUMERAL ;

// Rune - Dummy.
RUNE_LITERAL    :   '\'' SINGLE_RUNE? '\'' ;

fragment
SINGLE_QUOTE    :   '\'' ;

fragment
SINGLE_RUNE     :   (~[\t\r\n"'] | ESCAPE_SEQUENCE) ;

// String - Dummy.
STRING_LITERAL  :   DOUBLE_QUOTE SINGLE_RUNE* DOUBLE_QUOTE ;

fragment
DOUBLE_QUOTE    :   '"' ;

// Escape sequences.
fragment
ESCAPE_SEQUENCE :   ESCAPE (CONTROL_CODE | UNICODE_POINT | ["']) ;

fragment
ESCAPE          :   '\\' ;

fragment
CONTROL_CODE    :   [rnt] ;

fragment
UNICODE_POINT   :   [uU] HEX_NUMERAL;

// Keywords.
// Used:
AS          :   'as' ;
END         :   'end' ;
FUNCTION    :   'function' ;
IMPORT      :   'import' ;
IS          :   'is' ;
MODULE      :   'module' ;
MUTABLE     :   'mutable' ;
UNSAFE      :   'unsafe' ;

// Unused:
RETURN      :   'return' ;
TYPE        :   'type' ;

INTEGER     :   'integer' ;
REAL        :   'real' ;
RUNE        :   'rune' ;
STRING      :   'string' ;
MATRIX      :   'matrix' ;
VECTOR      :   'vector' ;
ARRAY       :   'array' ;
LIST        :   'list' ;

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
ASSIGNMENT  :   ':=' ;

NL          :   '\n' | '\r' '\n' ;

WS          :   [ \t\f]+ -> channel(WHITESPACE) ;

COMMENT     :   '//' ~[\r\n]* -> channel(COMMENTS) ;
