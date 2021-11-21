# Benchmarks


## `pybs`

First, you need to install [`pybs`](https://github.com/henriksu/pybs), e.g., via
```bash
git clone https://github.com/henriksu/pybs.git
cd pybs
git checkout 832f037cc342f5c3808c8f50a869b7b9ffb9b170 # latest version at the time of writing
pip install -e .
```

The benchmarks are contained in the [Jupyter](https://jupyter.org/) notebook
`benchmarks_python.ipynb` in this folder.


## BSeries.jl

The benchmarks of [BSeries.jl](https://github.com/ranocha/BSeries.jl) used
Julia v1.7.0-rc2.

To run the benchmarks, execute the script `benchmarks_julia.jl` in this folder,
e.g., using

```bash
julia benchmarks_julia.jl
```

from the terminal or

```julia
julia> include("benchmarks_julia.jl")
```

from the Julia REPL.


## Different symbolic backends of BSeries.jl

The benchmarks of [BSeries.jl](https://github.com/ranocha/BSeries.jl) used
Julia v1.7.0-rc2.

To run the benchmarks, execute the script `benchmarks_symbolic.jl` in this folder,
e.g., using

```bash
julia benchmarks_symbolic.jl
```

from the terminal or

```julia
julia> include("benchmarks_symbolic.jl")
```

from the Julia REPL.
