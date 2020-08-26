project(compiler VERSION 0.1.0)

# Call macro to add lexer and grammar to your build dependencies.
antlr_target(ExperimentalGrammarLexer ExperimentalLexer.g4 LEXER
             PACKAGE compiler)
antlr_target(ExperimentalGrammarParser ExperimentalParser.g4 PARSER
             PACKAGE compiler
             DEPENDS_ANTLR ExperimentalGrammarLexer
             COMPILE_FLAGS -lib ${ANTLR_ExperimentalGrammarLexer_OUTPUT_DIR})

# include generated files in project environment
include_directories(${ANTLR_ExperimentalGrammarLexer_OUTPUT_DIR})
include_directories(${ANTLR_ExperimentalGrammarParser_OUTPUT_DIR})

# add generated grammar to demo binary target
add_executable(compiler main.cpp
               ${ANTLR_ExperimentalGrammarLexer_CXX_OUTPUTS}
               ${ANTLR_ExperimentalGrammarParser_CXX_OUTPUTS})
target_link_libraries(compiler antlr4_static)

set_source_files_properties(${ANTLR_ExperimentalGrammarLexer_CXX_OUTPUTS} ${ANTLR_ExperimentalGrammarParser_CXX_OUTPUTS} PROPERTIES COMPILE_FLAGS -std=c++11)
set_source_files_properties(main.cpp PROPERTIES COMPILE_FLAGS -std=c++20)
