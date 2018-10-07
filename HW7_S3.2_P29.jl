import RowEchelon
import LinearAlgebra

#=
Homework 6
Section 2.5
Problems 17
=#

# Create the matrix
A = [2 -6 4 ; -4 8 0 ; 0 -4 6]
LU = LinearAlgebra.lu(A)
print("L = \t")
println(LU.L)
print("U = \t")
println(LU.U)

# Create inverses of LU
invL = inv(LU.L)
invU = inv(LU.U)
print("invL = \t")
println(invL)
print("invU = \t")
println(invU)

# Solve for invA
print("invA = \t")
println(invU*invL)
