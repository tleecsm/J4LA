import RowEchelon

#=
Homework 6
Section 2.5
Problems 2
=#

# Create the matrix and the LU matrices
A = [2 -6 4 ; -4 8 0 ; 0 -4 6]
Ab = [2 -6 4 -7; -4 8 0 5; 0 -4 6 2]
L = [1 0 0 ; -2 1 0; 0 1 1]
U = [2 -6 4 ; 0 -4 8 ; 0 0 -2]

# Row Reduce A
Arref = RowEchelon.rref(Ab)
print("ROW REDUCED SOLUTION: \t")
println(Arref)

# Find Ly = b
# Find Ux = y
# Append b to L
Lb = [1 0 0 -7; -2 1 0 5; 0 1 1 2]
Lbrref = RowEchelon.rref(Lb)

# Append y to U
Uy = [2 -6 4 Lbrref[1,4]; 0 -4 8 Lbrref[2,4]; 0 0 -2 Lbrref[3,4]]
Uyrref = RowEchelon.rref(Uy)
print("LU SOLUTION: \t \t")
println(Uyrref)
