import RowEchelon

#=
Homework 5
Section 2.1
Problem 10
=#

# Initialize Matrices
A = [3 -6 ; -1 2]
B = [-1 1 ; 3 4]
C = [-3 -5 ; 2 1]

print("AB = ")
println(A*B)

print("AC = ")
println(A*C)

println("Determine whether B == C:")
if (B == C)
	println("True, B == C")
else
	println("False, B != C")
end
