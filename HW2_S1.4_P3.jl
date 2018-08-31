import RowEchelon

#=
Homework 2
Section 1.4
Problem 3
=#

# Create the first Matrix
A = [1 2 ;
     -3 1 ;
     1 6]

# Create the second matrix
B = [-2 ; 3]

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
