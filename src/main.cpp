#include <iostream>

#include "antlr4-runtime.h"
#include "OrendaLexer.h"
#include "OrendaParser.h"

int main(int argc, char* argv[]) {
    antlr4::ANTLRInputStream inputStream(std::cin);
    orenda::OrendaLexer lexer(&inputStream);
    antlr4::CommonTokenStream tokens(&lexer);

    for (std::unique_ptr<antlr4::Token>
            token = lexer.nextToken();
            token->getType() != antlr4::Token::EOF;
            token = lexer.nextToken()) {

        std::cout << "Token: " << std::setw(4) << std::left << token->getType();

        switch (token->getType()) {
            case orenda::OrendaLexer::NL:
                std::cout << "<NL>";

                break;

            case orenda::OrendaLexer::WHITESPACE:
            case orenda::OrendaLexer::WS:
                std::cout << "<WS>";

                break;

            default:
                std::cout << '\'' << token->getText() << '\'';
        }

        std::cout << std::endl;
    }
}
