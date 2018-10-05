import RowEchelon
import LinearAlgebra

#=
Homework 6
Section 2.5
Problems 14
=#

# Create the matrix
A = [ 1 3 1 5 ; 5 20 6 31 ; -2 -1 -1 -4 ; -1 7 1 7]
LU = LinearAlgebra.lu(A)
print("L = \t")
println(LU.L)
print("U = \t")
println(LU.U)
