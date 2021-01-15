#include <iostream>

#include "antlr4-runtime.h"
#include "OrendaLexer.h"
#include "OrendaParser.h"

int main(int argc, char* argv[]) {
    antlr4::ANTLRInputStream inputStream(std::cin);
    orenda::OrendaLexer lexer(&inputStream);
    antlr4::CommonTokenStream tokens(&lexer);

    std::cout << "Start of scanning..." << std::endl << std::endl;

    for (std::unique_ptr<antlr4::Token>
            token = lexer.nextToken();
            token->getType() != antlr4::Token::EOF;
            token = lexer.nextToken()) {

        std::cout << "Token: " << std::setw(20) << std::left;

        switch (token->getType()) {
            case orenda::OrendaLexer::NL:
                std::cout << "<NL>";

                break;

            case orenda::OrendaLexer::WS:
                std::cout << "<WS>";

                break;

            case orenda::OrendaLexer::COMMENT:
                std::cout << "<COMMENT>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::INTEGER_LITERAL:
                std::cout << "<INTEGER_LITERAL>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::REAL_LITERAL:
                std::cout << "<REAL_LITERAL>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::BASED_LITERAL:
                std::cout << "<BASED_LITERAL>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::BINARY_LITERAL:
                std::cout << "<BINARY_LITERAL>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::OCTAL_LITERAL:
                std::cout << "<OCTAL_LITERAL>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::END:
            case orenda::OrendaLexer::FUNCTION:
            case orenda::OrendaLexer::IMPORT:
            case orenda::OrendaLexer::IS:
            case orenda::OrendaLexer::MODULE:
            case orenda::OrendaLexer::RETURN:
            case orenda::OrendaLexer::TYPE:
            case orenda::OrendaLexer::VAR:
                std::cout << "<KEYWORD>" << '\'' << token->getText() << '\'';

                break;

            default:
                std::cout << token->getType() << '\'' << token->getText() << '\'';
        }

        std::cout << std::endl;
    }

    std::cout << "Finished scanning." << std::endl;
}
