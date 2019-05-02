set.seed(1011)

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = .618,
  fig.pos = "H"
 )

knitr::knit_hooks$set(document = function(x) {
  sub("\\usepackage[]{color}", "\\usepackage{xcolor}", x, fixed = TRUE)
})

# tidyverse -----------------------------------
library(tidyverse)
# tools for r markdown ------------------------
# devtools::install_github("ygeunkim/rmdtool")
library(rmdtool)
# tools for ggplot2 ---------------------------
# devtools::install_github("ygeunkim/goodgraphic")
library(goodgraphic)
# textbook dataset package --------------------
library(MPV)

# rounding digits ------------------------------
options(digits = 3)

# pander table remove NA ----------------------
pander::panderOptions("missing", "")
