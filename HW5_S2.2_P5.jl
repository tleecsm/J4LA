import RowEchelon

#=
Homework 3
Section 1.7
Problem 41
=#

import RowEchelon

#=
Homework 3
Section 1.7
Problem 5
=#

# Create the matrix
A = [3 -4 10 7 -4 ;
	 -5 -3 -7 -11 15 ;
	 4 3 5 2 1 ;
	 8 -7 23 4 15]

# Row Reduce the matrix
A_rref = RowEchelon.rref(A)

# Store the rows and columns of A
rows = size(A)[1]
cols = size(A)[2]

# Find the pivot columns
pivotCols = zeros(0)
for i = 1:rows
	for j = 1:cols
		if A_rref[i,j] != 0
			append!(pivotCols,j)
			break
		end
	end
end

# The columns we want are the pivot columns
B = Array{Float64}(undef, 4, 0)
for col in pivotCols
	global B
	B = hcat(B, A[:,Int64(col)])
end

# Row Reduce
B_rref = RowEchelon.rref(B)

# Print results:
println("Original Matrix:")
println(A)
print("Matrix made from columns ")
print(pivotCols)
println(":")
println(B)
println("Row Reduced:")
println(B_rref)
