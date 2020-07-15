#include <iostream>

#include "antlr4-runtime.h"
#include "ExperimentalLexer.h"
#include "ExperimentalParser.h"

int main(int, char**) {
    antlr4::ANTLRInputStream inputStream(std::cin);
    compiler::ExperimentalLexer lexer(&inputStream);
    antlr4::CommonTokenStream tokens(&lexer);
    compiler::ExperimentalParser parser(&tokens);
    antlr4::tree::ParseTree *tree = parser.unit();

    std::cout << "Start of parsing..." << std::endl << std::endl;

    std::cout << tree->toStringTree(&parser, true) << std::endl << std::endl;

    std::cout << "\nEnd of parsing!\n";
}
