import RowEchelon

#=
Homework 2
Section 1.4
Problem 37
=#

# Create the Matrix to be evaluated
A = [ 7 2 -5 8 ;
	 -5 -3 4 -9 ;
	 6 10 -2 7 ;
	 -7 9 2 15 ]

# Store the columns for future reference 
columns = 4

# Row reduce the Matrix
A_rref = RowEchelon.rref(A)

println("Original Matrix, A")
println(A)
println("Row Reduced Echelon Matrix:")
println(A_rref)

# Determine whether or not matrix has a pivot position in each row
hasAllZeroRow = false
index = 1
currentZeros = 0
while index <= columns
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
	if currentZeros == columns
		# If here then:
		# A row with all zeroes was found
		hasAllZeroRow = true	
	end
	currentZeros = 0
	index += 1
end

if hasAllZeroRow == true
	# If here then:
	# The matrix does not span R4
	println("The Matrix does not span R4")
else
	# If here then:
	# The matrix does span all elements in R4
	println("The Matrix does span R4")
end

println()
println()
exit(0)