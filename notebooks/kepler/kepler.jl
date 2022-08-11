
# Set up required packages
using Pkg
Pkg.activate(@__DIR__)
Pkg.instantiate()


# Load packages
using BSeries
using SymPy
using Latexify
using LinearAlgebra

# Kepler problem
function f_p(q, p)
  (-1 / sqrt(q[1]^2 + q[2]^2)^3) .* q
end

function f_q(q, p)
  p
end

# Störmer-Verlet method as additive RK method, see
# Hairer, Lubich, Wanner (2002)
# Geometric numerical integration
# Table II.2.1
As = [
    [0 0; 1//2 1//2],
    [1//2 0; 1//2 0],
]
bs = [
    [1//2, 1//2],
    [1//2, 1//2]
]
ark = AdditiveRungeKuttaMethod(As, bs)

# Set up symbolic equation
dt_sym = symbols("h", real=true)
q_sym = symbols("q_1, q_2", real=true)
p_sym = symbols("p_1, p_2", real=true)
u_sym = [q_sym..., p_sym...]
f_q_sym = [f_q(q_sym, p_sym)..., 0, 0]
f_p_sym = [0, 0, f_p(q_sym, p_sym)...]
f_sym = (f_q_sym, f_p_sym)

# Compute B-series of the numerical integrator and the modified equation
truncation_order = 4
series_integrator = bseries(ark, truncation_order)
series = modifying_integrator(f_sym, u_sym, dt_sym, series_integrator)

println("Modifying integrator equation for ", u_sym[1], ":")
println(latexify(series[1], cdot=false))
