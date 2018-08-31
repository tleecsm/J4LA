import RowEchelon

#=
Homework 2
Section 1.4
Problem 4
=#

# Create the first Matrix
A = [1 3 -4 ;
     3 2 1]

# Create the second matrix
B = [1 ; 2 ; 1]

# Multiply the A and B
matrixProduct = A*B

# Print the results
println()
println("Original Matrix, A:")
println(A)
println("Original Matrix, B")
println(B)
println("Product Matrix, A*B:")
println(matrixProduct)
println()
