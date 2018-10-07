import RowEchelon
import LinearAlgebra

#=
Homework 7
Section 3.2
Problems 29
=#

# Create B
B = [1 0 1 ; 1 1 2 ; 1 2 1]
# Create B^5
B5 = B^5
# Get detB5
detB5 = LinearAlgebra.det(B5)

println("Original Matrix, B:")
println(B)
println("B^5:")
println(B5)
println("Determinate of B^5")
println(detB5)
