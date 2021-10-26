Feature: Show syntax errors
	Rule: Token sequences that violate language grammar must be shown as syntax errors
		Background:
			Given a sequence of tokens
		Example: Invalid variable declaration
			When the statement "var average / 2" is parsed
			Then it should display the message "SYNTAX ERROR! - Invalid variable declaration"
