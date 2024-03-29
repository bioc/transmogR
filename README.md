# transmogR <img id="transmogr_logo" src="man/figures/transmogR.png" align="right" width = "125" />

<!-- badges: start -->
[![Build Status](https://github.com/smped/transmogR/workflows/R-CMD-check-bioc/badge.svg)](https://github.com/smped/transmogR/actions)
[![Repo Status](https://img.shields.io/badge/repo%20status-Active-green.svg)](https://shields.io/)
[![Codecov test coverage](https://codecov.io/gh/smped/transmogR/branch/gh-actions/graph/badge.svg)](https://codecov.io/gh/smped/transmogR?branch=gh-actions)
<!-- badges: end -->


This package contains functions for creating a variant-modified reference genome or transcriptome.
SNPs, Insertions and Deletions are all supported.

With a generous tip of the hat and deep appreciation to Bill Watterson. 
Results are expected to be more predictable than for prototype transmogrifiers.

To install the stable version of `transmogR` from Bioconductor please try the following.

```r
if (!require("BiocManager")) {
  install.packages("BiocManager")
}
BiocManager::install("transmogR")
```

Alternatively, the latest build can be installed using

```r
if (!require("BiocManager")) {
  install.packages("BiocManager")
}
BiocManager::install("smped/transmogR")
```
