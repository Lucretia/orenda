parser grammar OrendaParser;

options {
    tokenVocab = OrendaLexer;
}

source_unit             :   module NL* EOF
                        ;

module                  :   NL* import_list? NL*
                            qualified_identifier COLON UNSAFE? MODULE IS NL*
                                (declarations NL*)*
                            qualified_identifier COLON END NL*
                        ;

import_list             :   IMPORT qualified_identifier (AS ID)* (COMMA NL*
                                   qualified_identifier (AS ID)* )+ NL*
                        ;

qualified_identifier    :   (ID DOT)* ID ;

declarations            :   constant_decl
                        |   type_decl
                        |   var_decl
                        ;

constant_decl           :   ID ASSIGNMENT constant_expr ;

constant_expr           :   INTEGER_LITERAL
                        |   REAL_LITERAL ; // TODO

type_decl               :   ID IS type ;

type                    :   qualified_identifier ;


// TODO - Add default initialisation.
var_decl            :   identifier_list COLON type ;

identifier_list     :   ID (COMMA ID)* ;

