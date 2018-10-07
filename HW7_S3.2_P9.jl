import RowEchelon
import LinearAlgebra

#=
Homework 7
Section 3.2
Problems 9
=#

A = [1 -1 -3 0 ;
     0 1 5 4 ;
     -1 2 8 5;
     3 -1 -2 3]

detA = LinearAlgebra.det(A)

println("Original Matrix:")
println(A)
println("Determinate:")
println(detA)
