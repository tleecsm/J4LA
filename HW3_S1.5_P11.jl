import RowEchelon

#=
Homework 3
Section 1.5
Problem 11
=#

# Create the matrix to be evaluated
A = [1 -4 -2 0 -3 -5 ;
	 0 0 1 0 0 -1 ;
	 0 0 0 0 1 -4 ;
	 0 0 0 0 0 0 ]

# Row reduce matrix A
A_rref = RowEchelon.rref(A)
sizeA_rref = size(A_rref)

# Identify free variables
leadingEntryLocated = false
pivotCols = zeros(0)
pivotRows = zeros(0)
row = 1
col = 1
while row <= sizeA_rref[1]
	# Loop once for each row
	global leadingEntryLocated
	global pivotCols
	global pivotRows
	global row
	global col
	leadingEntryLocated = false
	col = 1
	while col <= sizeA_rref[2]
		# Loop once for each col
		if A_rref[row,col] != 0 && leadingEntryLocated == false
			# Leading Entry Located
			leadingEntryLocated = true
			append!(pivotCols,col)
			append!(pivotRows,row)
		end
		col += 1
	end
	row += 1
end

freeVars = zeros(0)

for i = 1:sizeA_rref[2]
	if !(i in pivotCols)
		# Every column that isnt a pivot column
		# Has a free variable
		append!(freeVars, i)
	end
end

println(A_rref)
println(pivotCols)
println(freeVars)
println(pivotRows)
