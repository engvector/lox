Feature: Convert single character symbols to respective token types
	Scenario Outline: Extract single character tokens
		Given an stream of characters
		When scanner encounters a single character <symbol>
		Then it should convert it into a <single character token>
		| symbol | single character token |
		| (      | LEFT_PAREN             |
		| ,      | SEPARATOR              |
