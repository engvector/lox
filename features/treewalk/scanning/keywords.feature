Feature: Identify keywords

	Scenario Outline: Extract keywords
		Given a stream of characters
		When scanner encounters a reserved <keyword>
		Then it converts it to a <keyword token>
		| keyword | keyword token |
		| fun			| FUNCTION			|
		| print		| PRINT					|
