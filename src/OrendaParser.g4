parser grammar OrendaParser;

options {
    tokenVocab = OrendaLexer;
}

source_unit             :   (module | main_function_decl) NL* EOF
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
                        |   function_decl
                        ;

// TODO - Check there is no receiver for a main function.
main_function_decl      :   function_decl ;

// TODO - This enables nested functions, do we want them to allow receivers?
function_decl           :   FUNCTION receiver? ID formal_params? IS NL*
                                (declarations NL*)*
                            END ID NL*
                        ;

formal_params           :   LEFT_PAREN (NL* formal_parameter (COMMA NL* formal_parameter)* NL*)* RIGHT_PAREN
                                (NL* COLON NL* qualified_identifier)* ;

formal_parameter        :   ID (COMMA ID)* COLON (IN | IN OUT | OUT) type ;

receiver                :   LEFT_PAREN ID COLON ID RIGHT_PAREN ;

type_decl               :   TYPE ID IS type ;

type                    :   qualified_identifier ;

// TODO - Add default initialisation.
object_decl             :   identifier_list COLON MUTABLE? type ;

identifier_list         :   ID (COMMA ID)* ;

