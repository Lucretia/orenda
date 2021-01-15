#include <iostream>

#include "antlr4-runtime.h"
#include "OrendaLexer.h"
#include "OrendaParser.h"

int main(int, char**) {
    antlr4::ANTLRInputStream inputStream(std::cin);
    orenda::OrendaLexer lexer(&inputStream);
    antlr4::CommonTokenStream tokens(&lexer);
    orenda::OrendaParser parser(&tokens);
    antlr4::tree::ParseTree *tree = parser.unit();

    std::cout << "Start of parsing..." << std::endl << std::endl;

    std::cout << tree->toStringTree(&parser, true) << std::endl << std::endl;

    std::cout << "\nEnd of parsing!\n";
}
