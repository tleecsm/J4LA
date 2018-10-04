import RowEchelon

#=
Homework 6
Section 2.3
Problems 1,2,3,4,5,6,7,8,9,10
=#


# Create function to handle these questions
function checkInvertable(matrix)
    try
        inv(matrix)
        print(matrix)
        println(" IS invertable.")
    catch
        print(matrix)
        println(" is NOT invertable.")
    end
end

# Problem 1
A = [5 7 ; -3 -6]
checkInvertable(A)

# Problem 2
A = [-4 2 ; 6 -3]
checkInvertable(A)

# Problem 3
A = [3 0 0 ; -3 -4 0 ; 8 5 -3]
checkInvertable(A)

# Problem 4
A = [-5 1 4 ; 0 0 0 ; 1 4 9]
checkInvertable(A)

# Problem 5
A = [3 0 -3 ; 2 0 4 ; -4 0 7]
checkInvertable(A)

# Problem 6
A = [1 -3 -6 ; 0 4 3 ; -3 6 0]
checkInvertable(A)

# Problem 7
A = [-1 -3 0 1 ; 3 5 8 -3 ; -2 -6 3 2 ; 0 -1 2 1]
checkInvertable(A)

# Problem 8
A = [3 4 7 4 ; 0 1 4 6 ; 0 0 2 8 ; 0 0 0 1]
checkInvertable(A)

# Problem 9
A = [4 0 -3 -7 ; -6 9 9 9 ; 7 -5 10 19 ; -1 2 4 -1]
checkInvertable(A)

# Problem 10
A = [5 3 1 7 9 ;
     6 4 2 8 -8 ;
     7 5 3 10 9 ;
     9 6 4 -9 -5 ;
     8 5 2 11 4]

checkInvertable(A)
