import RowEchelon
import LinearAlgebra

#=
Homework 7
Section 3.2
Problems 26
=#

# Create a matrix with the vectors as columns
A = [3 2 -2 0 ;
     5 -6 -1 0 ;
     -6 0 3 0 ;
     4 7 0 -3]

# Find the detA
detA = LinearAlgebra.det(A)

println("Original Matrix:")
println(A)
println("Determinate:")
println(detA)

# See if the Determine was 0
# Dont forget floating point error
if (detA > 0.000001 || detA < -0.000001)
    println("Hence the original matrix is invertable, and its columns form a linearly independent set.")
else
    println("Hence the original matrix is NOT invertable, and its columns form a linearly dependent set.")
end
