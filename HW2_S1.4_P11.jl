import RowEchelon

#=
Homework 2
Section 1.4
Problem 11
=#

# Create the first Matrix
A = [1 3 -4 ; 
	 1 5 2 ; 
	 -3 -7 6]

# Create the second matrix
B = [-2 ; 4 ; 12]

# Create an augmented matrix
Augment = [1 3 -4 -2 ;
		   1 5 2 4 ;
		   -3 -7 6 12]

# Solve the matrix
Augment_rref = RowEchelon.rref(Augment)

# Print the results
println()
println("Original Matrix, A:")
println(A)
println("Original Matrix, B")
println(B)
println("Augmented Matrix:")
println(Augment)
println("Row Reduced Echelon Matrix:")
println(Augment_rref)
println("Solution as a vector:")
println(Augment_rref[:,4])
println()

