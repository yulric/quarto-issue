# Quarto renv Post-Render Issue Reproduction

This project reproduces an issue where Quarto's post-render scripts cannot
access R libraries installed via renv within a Github action.

The Github action in `.github/workfows/render-quarto.yml` builds the Quarto
project in the `quarto` folder. However, it fails at the last step where 
it has to render the project due it failing to find the `dplyr` library.

The project has no problem rendering when run locally using the following 
steps:

1. Make sure you're using R version `4.0.3`. You can use
   [rig](https://github.com/r-lib/rig) to switch between R versions.
2. Install the [renv](https://rstudio.github.io/renv/) dependencies by running 
   the command
   [renv::restore](https://rstudio.github.io/renv/reference/restore.html)
   within the R console.
3. Run the command `quarto render quarto` to render the project.

