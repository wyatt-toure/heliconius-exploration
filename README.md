## Summary

This is the repository containing all the code to produce the analyses and
figures in the manuscript <span style="text-decoration:underline">‘CURRENTLY
UNTITLED’</span>.

## Website

A reader-friendly website which walks through each of the models in the
manuscript is available at
<https://wyatt-toure.github.io/heliconius-exploration>.

## How to reproduce the results

If you want to reproduce the results you simply need to download the entire
repository onto your system and open
[analysis.Rmd](https://github.com/wyatt-toure/heliconius-exploration/blob/main/analysis.Rmd)
in RStudio. You will then need to install the packages required for the analysis
which are listed at the bottom of this README. Then you can select the Run All
option under the Code option in the navbar. You can also run all chunks
independently as well though you should do so sequentially since variables
necessary for the analysis are created as we go.

## Directory structure

  - `data/` contains the raw data used to conduct the analyses
  - `docs/` contains the reader-friendly html write-up of the analyses, the
    GitHub pages site is built from this folder
  - `R/` contains custom R functions used in the analysis
  - `figs/` contains the individual files for the figures and residual
    diagnostic plots produced by the analysis script
  - `images/` contains relevant images and videos of the experiment

The root directory contains all the Rmd scripts used to conduct the analyses and
render the website.

The R code for the analysis can be found in
[analysis.Rmd](https://github.com/wyatt-toure/heliconius-exploration/blob/main/analysis.Rmd).

The methods page is built from the
[methods.Rmd](https://github.com/wyatt-toure/heliconius-exploration/blob/main/methods.Rmd)
file and the home page is built from the
[index.Rmd](https://github.com/wyatt-toure/heliconius-exploration/blob/main/index.Rmd)
file.

## Metadata

Data are available in the
[`data/`](https://github.com/wyatt-toure/heliconius-exploration/blob/main/data/)
directory.

Below I provide the variable descriptions for the dataset and the [packages
required](#required-tools-and-references) to conduct the analyses and construct
the website as well as their versions and citations.

COMING SOON