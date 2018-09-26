import RowEchelon

#=
Homework 5
Section 2.1
Problem 1
=#

# Initialize all Matrices
A = [2 0 -1 ; 4 -5 2]
B = [7 -5 1 ; 1 -4 -3]
C = [1 2 ;-2 1]
D = [3 5 ; -1 4]
E = [-5 ; 3]

println("-2A:")
println(-2*A)

println("B-2A:")
println(B-(2*A))

# After this point, products may not exist
# Use try/catch to find nonexistent products.
println("AC:")
try
	println(A*C)
catch
	println("AC cannot be computed.")
end

println("CD:")
try
	println(C*D)
catch
	println("CD cannot be computed.")
end
