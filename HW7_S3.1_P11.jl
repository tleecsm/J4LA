import RowEchelon
import LinearAlgebra

#=
Homework 7
Section 3.1
Problems 11
=#

A = [3 5 -8 4 ;
     0 -2 3 -7 ;
     0 0 1 5 ;
     0 0 0 2]

detA = LinearAlgebra.det(A)

println("Original Matrix:")
println(A)
println("Determinate:")
println(detA)
