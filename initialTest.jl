#=
This is a comment block
=#

# This is an inline comment

# Variable declaration
iVar1 = 1
iVar2 = 2

# Variable arithmatic
iVar3 = iVar1+iVar2
iVar4 = iVar1*iVar2

# Print tests
println(iVar3)
println(iVar4)
println()

# Loop format and test
for int = 1:10
    println(int)
end

println()

iVar5 = 1
while iVar5 <= 10
    println(iVar5)
    # Must include 'global' for variables in loops
    global iVar5 += 1
end
