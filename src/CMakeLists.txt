project(orenda VERSION 0.1.0)

# Call macro to add lexer and grammar to your build dependencies.
antlr_target(OrendaGrammarLexer OrendaLexer.g4 LEXER
             PACKAGE orenda)
antlr_target(OrendaGrammarParser OrendaParser.g4 PARSER
             PACKAGE orenda
             DEPENDS_ANTLR OrendaGrammarLexer
             COMPILE_FLAGS -lib ${ANTLR_OrendaGrammarLexer_OUTPUT_DIR})

# include generated files in project environment
include_directories(${ANTLR_OrendaGrammarLexer_OUTPUT_DIR})
include_directories(${ANTLR_OrendaGrammarParser_OUTPUT_DIR})

# add generated grammar to demo binary target
add_executable(orenda main.cpp
               ${ANTLR_OrendaGrammarLexer_CXX_OUTPUTS}
               ${ANTLR_OrendaGrammarParser_CXX_OUTPUTS})
target_link_libraries(orenda antlr4_static)

set_source_files_properties(${ANTLR_OrendaGrammarLexer_CXX_OUTPUTS} ${ANTLR_OrendaGrammarParser_CXX_OUTPUTS} PROPERTIES COMPILE_FLAGS -std=c++11)
set_source_files_properties(main.cpp PROPERTIES COMPILE_FLAGS -std=c++20)
