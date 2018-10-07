import RowEchelon
import LinearAlgebra

#=
Homework 7
Section 3.2
Problems 10
=#

A = [1 3 -1 0 -2 ;
     0 2 -4 -1 -6 ;
     -2 -6 2 3 9 ;
     3 7 -3 8 -7 ;
     3 5 5 2 7]

detA = LinearAlgebra.det(A)

println("Original Matrix:")
println(A)
println("Determinate:")
println(detA)
