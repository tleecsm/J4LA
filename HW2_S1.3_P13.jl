import RowEchelon

#=
Homework 2
Section 1.3
Problem 13
=#

println()

# Create the Matrix to be evaluated
A = [1 -4 2 3 ;
     0 3 5 -7 ;
    -2 8 -4 -3]

# Store the number of columns
columns = 4

# Print the original Matrix
println("Original Matrix:")
println(A)
println()

# Row reduce the Matrix
A_rref = RowEchelon.rref(A)

# Print the RREF'd matrix
println("Row Reduced Echelon Form:")
println(A_rref)
println()

# Determine whether or not matrix was consistent
index = 0
leadingEntryLocated = false
consistent = true
for value in A_rref
    global index
    global columns
    global leadingEntryLocated
    global consistent

    # Determine first if we are in the 0 column of a Row
    if index % columns == 0
        # If here then:
        # We are in the 0 columns
        # Reset Leading Entry Locator
        leadingEntryLocated = false
    end
    # Now we can save time by skipping the rest of the Row
    # If a leading entry has already been found
    if leadingEntryLocated == false
        # If here then:
        # Leading entry hasnt been found yet
        # Evaluate the current position
        # Determine if its a leading entry
        if value != 0
            # If here then:
            # This row has a leading entry somewhere
            if index % columns == (columns - 1)
                # If here then:
                # This entry is in the last column
                # Matrix is not consistent
                consistent = false
            else
                # Else:
                # The matrix hasnt been proven inconsistent
                leadingEntryLocated = true
            end
        end
    end
    index = index+1
end

if consistent == true
    # If here then:
    # Matrix is consistent
    println("This matrix is consistent.")
    print("Hence the vector b is a linear combination of the ")
    print("vectors made by the columns of the original matrix.")
else
    # Else:
    # Matrix is inconsistent
    println("This matrix is inconsistent.")
    print("Hence the vector b is NOT a linear combination of the ")
    print("vectors made by the columns of the original matrix.")
end

# Print two blanks lines for a better display
println()
println()
exit(0)
