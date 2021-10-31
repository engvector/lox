Feature: Type-check all expressions

	# Numeric types
	Rule: Numbers must be handled according to their types
		Background:
			Given an expression containing two identifiers
		Example: Integers only
			When the identifiers are all integer numbers
			Then addition, subtraction and multiplication must generate integer numbers as result
		Example: Floating-point numbers only
			When identifiers are floating-point numbers
			Then addition, subtraction and multiplication must generate floating-point numbers as result
		Example: Adding mixed numerical types
			When an integer is added to floating-point number
			Then the result must be a floating-point number
		Example: Subtracting mixed numerical types
			When an integer is subtracted from a floating point number
			And when a floating-point number is subtracted from an integer
			Then the result must be a floating-point number
		Example: Multiplying mixed numerical types
			When an integer is multiplied with floating point number
			Then the result must be a floating-point number
		Example: Dividing numbers
			When numbers of any type are divided
			Then the result must be a floating-point number

	Rule: Only valid types are allowed in an expression
		Background:
			Given an expression containing two identifiers
		Example: Numbers can only be used with other numbers
			When an expression has two identifiers
			Then the identifiers can only be integers or floating point numvers
		Example: Strings can only be concatenated
			When the expression contains two string and an addition operator
			Then the result must be a concatenated string
			And the first string must appear first in the concatenated string
			And the second string must appear last in the concatenated string
		Example: Adding numbers and strings
			When the expression has a number and a string
			Then it must only have an addition operator
			And the number must be converted into a string
			And must be concatenated with the other string
		Example: Expressions with numbers and strings
			When the expression has a number and a string
			And it doesn't have the addition operator
			Then it must generate a syntax-error

	Scenario: Inheritance check
		Given a class declaration statement
		When it has two identifiers and a '<' operator
		Then the identifier on the left must be considered a new class
		And the identifier on the right must already be declared as a class
		And the new class must be a derived class of the identifier on the right

	Scenario: Disallow mathematical operators with objects
		When an expression has two identifiers
		And a mathematical operator
		And at least one of them is an object
		Then it must generate a syntax-error
