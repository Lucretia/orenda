parser grammar ExperimentalParser;

options {
    tokenVocab = ExperimentalLexer;
}

unit                    :   (main_function | module+) NL* EOF ;

main_function           :   NL* import_list
                            function_decl ;

function_decl           :   NL* FUNCTION ID parameters? IS NL*
                                statement_sequence
                            END FUNCTION ID ;

parameters              :   LEFT_PAREN RIGHT_PAREN ;

function_list           :   function_decl+ ;

module                  :   import_list
                            NL* MODULE ID IS NL*
                                function_list
                            NL* END MODULE ID NL* ;

import_list             :   import_clause* ;

import_clause           :   NL* IMPORT ID (COMMA ID)? ;

statement_sequence      :   (statement NL*)* ;

statement               :   (
                            type_statement
                        |   variable_decl
                        |   assignment_statement
                        |   return_statement
                        ) ;

type_statement          :   TYPE ID IS range_type ;

assignment_statement    :   ID EQUALS expr ;

return_statement        :   RETURN expr ;

range_type              :   DECIMAL_LITERAL DIARESIS DECIMAL_LITERAL ;

// TODO: Fix this var weirdness. Not sure what my original idea was exactly
//       var <type> : ID = expr?
variable_decl           :   VAR COLON ID EQUALS expr ;

expr                    :   term PLUS expr
                        |   term MINUS expr
                        |   term ;

term                    :   factor TIMES term
                        |   factor DIVIDE term
                        |   factor ;

factor                  :   LEFT_PAREN expr RIGHT_PAREN
                        |   DECIMAL_LITERAL ;

types                   :   ID ;
