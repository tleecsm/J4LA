import RowEchelon

#=
Homework 6
Section 2.5
Problems 4
=#

# Create the matrix and the LU matrices
Ab = [1 -1 2 0 ; 1 -3 1 -5 ; 3 7 5 7]
L = [1 0 0 ; 1 1 0; 3 -5 1]
U = [1 -1 2 ; 0 -2 -1 ; 0 0 -6]

# Row Reduce A
Arref = RowEchelon.rref(Ab)
print("ROW REDUCED SOLUTION: \t")
println(Arref)

# Find Ly = b
# Find Ux = y
# Append b to L
Lb = [1 0 0 0; 1 1 0 -5; 3 -5 1 7]
Lbrref = RowEchelon.rref(Lb)

# Append y to U
Uy = [1 -1 2 Lbrref[1,4] ; 0 -2 -1 Lbrref[2,4]; 0 0 -6 Lbrref[3,4]]
Uyrref = RowEchelon.rref(Uy)
print("LU SOLUTION: \t \t")
println(Uyrref)
