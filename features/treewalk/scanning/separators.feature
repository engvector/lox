Feature: Correctly identify specific characters as token separators
	Background:
		Given an stream of characters

	Rule: Certain characters are considered token separators
		Background:
			Given scanner is currently processing a token
	
		Example: Semicolon ends the current statement
			When scanner encounters a semicolon
			Then it must finish processing current token

		Example: One or more space character separates two tokens
			When scanner encounters one or more space characters
			Then it must finish processing the current token

		Example: One or more tab characters separates two tokens
			When scanner encounters one or more tab characters
			Then it must finish processing the current token

		Example: A carriage-return and/or linefeed indicates end of statement
			When scanner encounters a carriage-return or linefeed character or both
			Then it must finish processing the current token
