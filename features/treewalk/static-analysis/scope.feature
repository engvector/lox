Feature: Verify identifier scope
	Rule: An identifier can only be used in the scope defined for it
		Example: Global identifiers
			When an identifier is declared globally
			Then it can be used everywhere in the program
		Example: Identifiers declared inside a function
			When an identifier is declared inside a function
			Then it can only be used inside that function
		Example: Function arguments
			When an identifier is declared as a function's arguments
			Then it can only be used inside that function
		Example: Class variables
			When an identifier is declared inside a class
			Then it can onlu be used by the objects of that class
			And the objects of all classes that inherit from this class
