# Crafting interpreters

This repo contains my implementation of the lox interpreter / compiler. Lox is an imaginary programming language discussed in the book [Crafting Interpreters]

The repository is split into three parts -
1. The first part is orientation. Those are converted into feature specifcations and test vectors for Test Driven Development (TDD). Associated files are present in the `features` directory.
1. The first interpreter is implemented in Golang instead of Java, as provided in the book. Associated code, tests and build scripts are present in `golox` directory.
1. The second interpreter is implemented in C/C++, in-line with what the book provides, but in a style of my own. Associated code, tests and build scripts are present in `clox` directory.

[Crafting Interpreters]:<http://www.craftinginterpreters.com>
