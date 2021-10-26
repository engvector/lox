Feature: Convert strings to literals
	
	Scenario: Extract identifiers and literals
		Given a stream of characters
		When scanner encounters characters that don't match any predefined token type
		Then it should be recorded as a LITERAL token type
