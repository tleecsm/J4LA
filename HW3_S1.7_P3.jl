import RowEchelon

#=
Homework 3
Section 1.7
Problem 3
=#

# Create the matrix
A = [2 -4 ; -3 6]

# Row Reduce the matrix
A_rref = RowEchelon.rref(A)

# Determine whether there is a row of all zeroes
hasAllZeroRow = false
index = 1
currentZeros = 0
while index <= size(A_rref)[2]
	global index
	global hasAllZeroRow
	global currentZeros

	# Parse through each entry of the rows, searching for an all 0 row.
	for entry in A_rref[index, :]
		global hasAllZeroRow
		global currentZeros

		if entry == 0
			# If here then:
			# Current entry is a zero, increment zero counter
			currentZeros += 1
		end
	end
	if currentZeros == size(A_rref)[2]
		# If here then:
		# A row with all zeroes was found
		hasAllZeroRow = true
	end
	currentZeros = 0
	index += 1
end

if hasAllZeroRow == true
	# If here then:
	# The vectors are not linearly independent
	println("These two vectors are linearly dependent")
else
	# If here then:
	# The vectors are not linearly independent
	println("These two vectors are linearly independent")
end
