import RowEchelon

#=
Homework 1
Section 1.2
Problem 3
=#

# Create matrix to be evalutaed
A = [1 2 4 8 ;
     2 4 6 8 ;
     3 6 9 12]

# Print matrix for reference
println("Input Matrix:")
println(A)
println()

# Evaluate with RowEchelon
A_rref = RowEchelon.rref(A)

# Print result
println("Reduced Row Echelon Form:")
println(A_rref)
