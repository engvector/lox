Scenario: All numbers are signed
	When we have numeric types in a program
	Then all of them must be considered as signed numbers
	# Signed numbers can be negative or positive. Unsigned numbers are always positive.
	# Depending on the number of bits used to represent them, 
	# unsigned numbers have a shorter range.

