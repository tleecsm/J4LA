import RowEchelon
import LinearAlgebra

#=
Homework 8
Section 4.2
Problems 18
=#

A = [5 -2 3 ;
     -1 0 -1 ;
     0 -2 -2 ;
     -5 7 2]

sizeA = size(A)
println("Original Matrix, A:")
println(A)
print("NulA is a subspace of R")
println(sizeA[2])
print("ColA is a subspace of R")
println(sizeA[1])
