#!/usr/bin/env Rscript

# This post-render script demonstrates the issue with renv libraries
# not being found during quarto render

setwd('../')
source('.Rprofile')

cat("Post-render script starting...\n")

# Try to load renv-managed packages
cat("Attempting to load dplyr...\n")
tryCatch({
  library(dplyr)
  cat("✓ dplyr loaded successfully\n")
}, error = function(e) {
  stop(e)
})

cat("Attempting to load jsonlite...\n")
tryCatch({
  library(jsonlite)
  cat("✓ jsonlite loaded successfully\n")
}, error = function(e) {
  stop(e)
})

cat("Post-render script completed.\n")
