
# Set up required packages
using Pkg
Pkg.activate(@__DIR__)
Pkg.instantiate()


# Load packages
using BSeries
using Latexify

# Setup the B-series of the average vector field method with
# coefficients up to order 5
series = bseries(5) do t, series
    if order(t) in (0, 1)
        return 1 // 1
    else
        v = 1 // 1
        n = 0
        for subtree in SubtreeIterator(t)
            v *= series[subtree]
            n += 1
        end
        return v / (n + 1)
    end
end

# Compute the modified equation
meq = modified_equation(series)

println("Simple representation of the modified equation:")
for (tree, coeff) in meq
    if coeff != 0
        println((coeff/symmetry(tree)), " ", tree)
    end
end

println()
println("LaTeX code of the modified equation:")
println(latexify(meq, cdot=false))
