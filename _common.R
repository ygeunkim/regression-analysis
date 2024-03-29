set.seed(1011)

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = .618,
  fig.pos = "H",
  message = FALSE
 )

knitr::knit_hooks$set(document = function(x) {
  sub("\\usepackage[]{color}", "\\usepackage{xcolor}", x, fixed = TRUE)
})

is_latex <- knitr::opts_knit$get("rmarkdown.pandoc.to") == "latex"
is_html <- knitr::opts_knit$get("rmarkdown.pandoc.to") == "html"

kable_format <- ifelse(is_latex, "latex", "html")
kable_format <- ifelse(length(kable_format) == 0, "html", kable_format) # for executable

# tidyverse -----------------------------------
library(tidyverse)
# modeling functions with tibble --------------
library(modelr)
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
# tibble print options -------------------------
options(tibble.print_min = 6, tibble.print_max = 6)

# pander table remove NA ----------------------
pander::panderOptions("missing", "")

# kableExtra latex xcolor warning -------------
options(kableExtra.latex.load_packages = FALSE)
