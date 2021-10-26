Feature: Convert number character sequence to integers

	Scenario Outline: Extract integer tokens
		Given a stream of characters
		When scanner encounters an <integer>
		Then it converts it into a <number token>
		| integer | number token |
		| 0       | {NUMBER, 0}  |
		| 1				| {NUMBER, 1}  |
		| 12			| {NUMBER, 12} |
		| 0123    | {NUMBER, 123}|
