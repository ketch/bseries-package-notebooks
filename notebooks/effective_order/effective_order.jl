
# Set up required packages
using Pkg
Pkg.activate(@__DIR__)
Pkg.instantiate()


# Load package
using BSeries

# Main method of Butcher with effective order 5
A = [0 0 0 0 0;
     1//5 0 0 0 0;
     0 2//5 0 0 0;
     3//16 0 5//16 0 0;
     1//4 0 -5//4 2 0]
b = [1 // 6, 0, 0, 2 // 3, 1 // 6]
rk_a = RungeKuttaMethod(A, b)
series_a = bseries(rk_a, 6)

@show order_of_accuracy(series_a)

# Starting procedure
A = [0 0 0 0 0;
     1//5 0 0 0 0;
     0 2//5 0 0 0;
     75//64 -9//4 117//64 0 0;
     -37//36 7//3 -3//4 4//9 0]
b = [19 // 144, 0, 25 // 48, 2 // 9, 1 // 8]
rk_b = RungeKuttaMethod(A, b)
series_b = bseries(rk_b, 6)

@show order_of_accuracy(series_b)

# Finishing procedure
A = [0 0 0 0 0;
     1//5 0 0 0 0;
     0 2//5 0 0 0;
     161//192 -19//12 287//192 0 0;
     -27//28 19//7 -291//196 36//49 0]
b = [7 // 48, 0, 475 // 1008, 2 // 7, 7 // 72]
rk_c = RungeKuttaMethod(A, b)
series_c = bseries(rk_c, 6)

@show order_of_accuracy(series_c)

# Compute B-series of the composition
series_comp = compose(series_b, series_a, series_c, normalize_stepsize = true)
@show order_of_accuracy(series_comp)
