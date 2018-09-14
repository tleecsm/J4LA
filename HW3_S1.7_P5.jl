import RowEchelon

#=
Homework 3
Section 1.7
Problem 5
=#

# Create the matrix
A = [0 -3 9 ;
	 2 1 -7 ;
	 -1 4 -5 ;
	 1 -4 -2]

# Row Reduce the matrix
A_rref = RowEchelon.rref(A)

# Check the diagonal of the matrix for all 1s.
index = 1
missingOne = false
while index <= size(A_rref)[2]
	global index
	global missingOne
	if A_rref[index,index] != 1
		missingOne = true
	end
	index += 1
end

if missingOne
	# Then the columns are not
	println("The columns of the matrix are dependent")
else
	# Then the columns are independent
	println("The columns of the matrix are independent")
end
