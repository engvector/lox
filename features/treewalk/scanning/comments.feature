Feature: Ignore comments

	Background: 
		Given a stream of characters sent to

	Scenario: Ignore single line comments
		When scanner identifies two consecutive forward slashes
		Then it should ignore the rest of that line

	Scenario: Ignore multiline comments
		When scanner identifies a forward slash followed by a asterix
		Then it should ignore all characters, including lines till it reaches an asterix followed by a forward slash
