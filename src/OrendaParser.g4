parser grammar OrendaParser;

options {
    tokenVocab = OrendaLexer;
}

source_unit             :   module NL* EOF
                        ;

module                  :   NL* import_list? NL*
                            UNSAFE? MODULE qualified_identifier IS NL*
                                (declarations NL*)*
                            END qualified_identifier NL*
                        ;

import_list             :   IMPORT qualified_identifier (AS ID)* (COMMA NL*
                                   qualified_identifier (AS ID)* )+ NL*
                        ;

qualified_identifier    :   (ID DOT)* ID ;

declarations            :   type_decl
                        |   object_decl
                        ;

type_decl               :   TYPE ID IS type ;

type                    :   qualified_identifier ;


// TODO - Add default initialisation.
object_decl             :   identifier_list COLON MUTABLE? type ;

identifier_list         :   ID (COMMA ID)* ;

