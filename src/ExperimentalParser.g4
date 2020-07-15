parser grammar ExperimentalParser;

options {
    tokenVocab = ExperimentalLexer;
}

unit                    :   (main_function | module+) EOF ;

main_function           :   import_list
                            function ;

function                :   FUNCTION ID parameters? IS NEW_LINE
                                statement_sequence
                            END FUNCTION ID NEW_LINE ;

parameters              :   LEFT_PAREN RIGHT_PAREN ;

function_list           :   function NEW_LINE (function NEW_LINE)* ;

module                  :   import_list
                            MODULE ID IS NEW_LINE
                                function_list
                            END MODULE ID NEW_LINE ;

import_list             :   (import_clause NEW_LINE)* ;

import_clause           :   IMPORT ID (COMMA ID)? NEW_LINE ;

statement_sequence      :   (statement NEW_LINE)+ ;

statement               :   (
                            type_statement
                        |   variable_decl
                        |   assignment_statement
                        ) ;

type_statement          :   TYPE ID IS range_type ;

assignment_statement    :   ID EQUALS expr ;

range_type              :   DECIMAL_LITERAL DIARESIS DECIMAL_LITERAL ;

variable_decl           :   VAR COLON ID EQUALS expr ;

expr                    :   DECIMAL_LITERAL ;

types                   :   ID ;
