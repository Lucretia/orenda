parser grammar ExperimentalParser;

options {
    tokenVocab = ExperimentalLexer;
}

startRule       :   program EOF
                ;

// There might be multiple new lines for "formatting" purposes at the start of the file.
program         :   NEW_LINE* function_decl
                ;

function_decl   :   FUNCTION ID IS NEW_LINE statements END ID? NEW_LINE
                ;

statements      :   return_stmt NEW_LINE
                |   NEW_LINE
                ;

return_stmt     :   RETURN expr ;

// Allow expressions to be split over lines, but only after the operator.
expr            :   numeric_literal PLUS NEW_LINE* numeric_literal ;

numeric_literal :   DECIMAL_LITERAL | BASED_LITERAL ;
