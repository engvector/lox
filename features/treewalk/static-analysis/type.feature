Scenario: Record data-type of each identifier
	Given a node in the parse tree
	When an identifier is encountered
	Then the data-type of the identifier must be stored as an attribute in that node

Scenario: Maintain symbol table
	Given a node in the parse tree
	When it is a new identifier
	Then it must be added as a new row to the symbol table
	And that row must record the identifier's name, type and current value
