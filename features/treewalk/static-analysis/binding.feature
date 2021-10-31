Scenario: Identify identifier location and link it to usage
	Given a parse tree
	When an identifier is encountered
	Then it should locate that identifier's declaration in the tree
	And link it to its usage in current location
