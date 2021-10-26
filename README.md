# Crafting interpreters

This repo contains my implementation of the lox interpreter / compiler. Lox is an imaginary programming language discussed in the book [Crafting Interpreters]

The repository is split into three parts -
1. The first part is orientation. Content from these chapters have been converted to cucumber feature specifcations and test vectors (for TDD). All feature files are present in `features` directory.
1. The first interpreter is implemented in Golang instead of Java. Code, tests and build scripts are present in `golox` directory.
1. The second interpreter is implemented in C/C++. Associated code, tests and build scripts are present in `clox` directory. The C/C++ code copies some parts from the book. The rest is written based on my design choices.

[Crafting Interpreters]:<http://www.craftinginterpreters.com>
