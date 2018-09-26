import RowEchelon

#=
Homework 5
Section 2.2
Problem 5
=#

# Adapt system into a matrix
A = [8 6 ; 5 4]
b = [2 ;-1]

# Find Ax = b with x = invA(b)
invA = inv(A)
x = invA*b

println("The solution is:")
print("x = ")
println(x)
