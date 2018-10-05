import RowEchelon

#=
Homework 6
Section 2.3
Problems 44
=#

# Create matrix to be inverted
A = [1 1/2 1/3 1/4 1/5 ;
     1/2 1/3 1/4 1/5 1/6 ;
     1/3 1/4 1/5 1/6 1/7 ;
     1/4 1/5 1/6 1/7 1/8 ;
     1/5 1/6 1/7 1/8 1/9]

invA = inv(A)

# print the last column
println("The last column of the inverse is:")
for i=1:5
    println(invA[i,5])
end
println("Additional decimal places are a result of floating point error.")
