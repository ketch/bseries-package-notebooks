# Computing with B-Series

[![License: MIT](https://img.shields.io/badge/License-MIT-success.svg)](https://opensource.org/licenses/MIT)
[![DOI](https://zenodo.org/badge/429305906.svg)](https://zenodo.org/badge/latestdoi/429305906)

This repository contains some code used in the forthcoming article "Computing with B-Series", by David I. Ketcheson and Hendrik Ranocha.

> We present BSeries.jl, a Julia package for the computation and manipulation of B-series, which are a
versatile theoretical tool for understanding and designing discretizations of
differential equations.
We give a short introduction to the theory of B-series
and associated concepts and provide examples of their use, including method composition
and backward error analysis.  The associated software is highly performant
and makes it possible to work with B-series of high order.

If you find these results useful, please cite the article mentioned above.  If you
use the implementations provided here, please *also* cite this repository as
```bibtex
@misc{ketcheson2021bseriesRepro,
  title={{bseries-package-notebooks}.
         {C}omputing with {B}-{S}eries.},
  author={Ketcheson, David I and Ranocha, Hendrik},
  year={2021},
  month={11},
  howpublished={\url{https://github.com/ketch/bseries-package-notebooks}},
  doi={10.5281/zenodo.5716611}
}
```

The numerical experiments were carried out on a computer running macOS 10.14.6.
The Jupyter notebooks running Julia kernels used Julia v1.6.3.

## Disclaimer

Everything is provided as is and without warranty. Use at your own risk!
