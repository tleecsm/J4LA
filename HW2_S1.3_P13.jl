import RowEchelon

#=
Homework 1
Section 1.3
Problem 13
=#

# Create the Matrix to be evaluated
A = [1 -4 2 3 ;
     0 3 5 -7 ;
    -2 8 -4 -3]

# Store the number of columns
columns = 4

# Solve the matrix
for value in A
    print(value)
    print(" | | ")
end
