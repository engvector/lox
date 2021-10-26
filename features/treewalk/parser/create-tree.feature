Feature: Parser must generate syntax trees
	Rule: Parser must generate a syntax tree representing the language grammar
		Background:
			Given a sequence of tokens

		Example: Addition statement
			When the scanner processes "var sum = 1 + 2"
			Then the parser's output must be
			* "sum" as root node
			* "+" as root's child
			* "1" and "2" as children of "+"

		Example: Division statement
			When the scanner processes "var average = sum / 2"
			Then the parser's output must be
			* "average" as root node
			* "/" as root's child
			* "sum" and "2" as children of "/"
