import Pkg
Pkg.activate(@__DIR__)
Pkg.instantiate()

using BSeries
using Latexify
using OrdinaryDiffEq
using RootedTrees
using StaticArrays
using Symbolics
import SymPy; sp=SymPy;
using PyCall, LaTeXStrings; import PyPlot; plt=PyPlot

inset_locator = pyimport("mpl_toolkits.axes_grid.inset_locator")

cycler = pyimport("cycler").cycler
line_cycler   = (cycler(color=["#56B4E9", "#009E73", "#0072B2", "#D55E00", "#CC79A7", "#F0E442","#E69F00"]) +
                 cycler(linestyle=["-", "--", "-.", ":", "-", "--", "-."]))
marker_cycler = (cycler(color=["#56B4E9", "#009E73", "#0072B2", "#D55E00", "#CC79A7", "#F0E442","#E69F00"]) +
                 cycler(linestyle=["none", "none", "none", "none", "none", "none", "none"]) +
                 cycler(marker=["4", "2", "3", "1", "+", "x", "."]))

plt.rc("axes", prop_cycle=line_cycler)
plt.rc("font", family="serif", size=18.)
plt.rc("savefig", dpi=100)
plt.rc("legend", loc="best", fontsize="medium", fancybox=true, framealpha=0.5)
plt.rc("lines", linewidth=2.5, markersize=5, markeredgewidth=2.5)
