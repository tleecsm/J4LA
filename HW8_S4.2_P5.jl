import RowEchelon
import LinearAlgebra

#=
Homework 8
Section 4.2
Problems 5
=#

A = [1 -4 0 2 0 ;
     0 0 1 -5 0 ;
     0 0 0 0 2]

nulA = LinearAlgebra.nullspace(A)
println("Original Matrix, A:")
println(A)
println("NulA:")
println(nulA)
