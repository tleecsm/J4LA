import RowEchelon

#=
Homework 5
Section 2.1
Problem 2
=#

# Initialize all Matrices
A = [2 0 -1 ; 4 -5 2]
B = [7 -5 1 ; 1 -4 -3]
C = [1 2 ;-2 1]
D = [3 5 ; -1 4]
E = [-5 ; 3]

println("A + 3B: ")
println(A+(3*B))

# After this point, products may not exist
# Use try/catch to find nonexistent products.
println("2C - 3E:")
try
	println((2*C) - (3*E))
catch
	println("2C - 3E cannot be computed.")
end

println("DB:")
try
	println(D*B)
catch
	println("DB cannot be computed.")
end

println("EC:")
try
	println(E*C)
catch
	println("EC cannot be computed.")
end
