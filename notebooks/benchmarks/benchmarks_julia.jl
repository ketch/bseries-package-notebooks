
## set up required packages
using Pkg
Pkg.activate(@__DIR__)
Pkg.instantiate()


## load packages
using BSeries
using BenchmarkTools, StaticArrays


## set up benchmark parameters
A = @SArray [0 0; 1//2 0]
b = @SArray [0, 1//1]
c = @SArray [0, 1//2]
up_to_order = 9


## print result for comparison with pybs
println("Sum of coefficients: ")
println(sum(values(modified_equation(A, b, c, up_to_order))))


## perform benchmark computation and display the result
display(@benchmark sum(values(modified_equation($A, $b, $c, $up_to_order))))
