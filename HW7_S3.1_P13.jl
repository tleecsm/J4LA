import RowEchelon
import LinearAlgebra

#=
Homework 7
Section 3.1
Problems 13
=#

A = [ 4 0 -7 3 -5 ;
     0 0 2 0 0;
     7 3 -6 4 -8;
     5 0 5 2 -3;
     0 0 9 -1 2]

detA = LinearAlgebra.det(A)

println("Original Matrix:")
println(A)
println("Determinate:")
println(detA)
