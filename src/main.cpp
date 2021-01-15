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

            case orenda::OrendaLexer::HEX_LITERAL:
                std::cout << "<HEX_LITERAL>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::END:
            case orenda::OrendaLexer::FUNCTION:
            case orenda::OrendaLexer::IMPORT:
            case orenda::OrendaLexer::IS:
            case orenda::OrendaLexer::MODULE:
            case orenda::OrendaLexer::RETURN:
            case orenda::OrendaLexer::TYPE:
            case orenda::OrendaLexer::VAR:
            case orenda::OrendaLexer::INTEGER:
            case orenda::OrendaLexer::REAL:
            case orenda::OrendaLexer::RUNE:
            case orenda::OrendaLexer::STRING:
                std::cout << "<KEYWORD>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::ID:
                std::cout << "<ID>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::HASH:
                std::cout << "<HASH>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::PLUS:
                std::cout << "<PLUS>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::MINUS:
                std::cout << "<MINUS>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::TIMES:
                std::cout << "<TIMES>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::DIVIDE:
                std::cout << "<DIVIDE>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::CARET:
                std::cout << "<CARET>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::COLON:
                std::cout << "<COLON>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::SEMICOLON:
                std::cout << "<SEMICOLON>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::DOT:
                std::cout << "<DOT>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::UNDERSCORE:
                std::cout << "<UNDERSCORE>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::TYPE_QUERY:
                std::cout << "<TYPE_QUERY>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::LEFT_PAREN:
                std::cout << "<LEFT_PAREN>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::RIGHT_PAREN:
                std::cout << "<RIGHT_PAREN>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::COMMA:
                std::cout << "<COMMA>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::EQUALS:
                std::cout << "<EQUALS>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::DIARESIS:
                std::cout << "<DIARESIS>" << '\'' << token->getText() << '\'';

                break;

            case orenda::OrendaLexer::RUNE_LITERAL:
                std::cout << "<RUNE_LITERAL>" << "->" << token->getText() << "<-";

                break;

            case orenda::OrendaLexer::STRING_LITERAL:
                std::cout << "<STRING_LITERAL>" << "->" << token->getText() << "<-";

                break;

            default:
                std::cout << token->getType() << '\'' << token->getText() << '\'';
        }

        std::cout << std::endl;
    }

    std::cout << "Finished scanning." << std::endl;
}
