# Changelog

## MSUthemes 1.0.1

- Added “Ohio St” as an option for Ohio State University in the Big Ten
  colour palettes

## MSUthemes 1.0.0

CRAN release: 2025-10-17

- Selected License: Attribution-ShareAlike 4.0 International
  <https://creativecommons.org/licenses/by-sa/4.0/>

- Added Code of Conduct
  <https://www.contributor-covenant.org/version/3/0/code_of_conduct/>
  with Contributor Covenant badge

- Added Metropolis font <https://fontsource.org/fonts/metropolis>

- Load Metropolis fonts on package load

- Add Michigan State University (MSU) color palette and gradients

  - Used Google Gemini (on 12/Sep/2025) to construct the sequential
    color palettes. The prompt was:

  > “Please convert ‘#909ab7’ to Hue, Saturation, Brightness (HSB) and
  > create a nine-color palette with ‘#909ab7’ in the center.”

- Added more sequential colour palettes

- Added additional unit tests

- Added Big Ten University primary and secondary colors

- Added README.Rmd

- Added scale functions for use with {ggplot2}

- Added Vignettes:
  - [Styling Plots with
    MSUthemes](https://emilioxavier.github.io/MSUthemes/news/vignettes/introduction.qmd)
  - [MSUthemes Colour
    Palettes](https://emilioxavier.github.io/MSUthemes/news/vignettes/colour_palettes.qmd)

- Added MSUthemes_WelcomeMessage

- Added Project Status (“stable, usable state and is being actively
  developed”) badge

- Added CRAN badge

- Added `R CMD check` badge

- Added codecov badge

- Added Zenodo badge

- ***Strongly encourage and recommend*** installing the Metropolis font
  as a system font. See Installing Metropolis Fonts vignette.
  [`vignette("install_metropolis_font", package = "MSUthemes")`](https://emilioxavier.github.io/MSUthemes/articles/install_metropolis_font.md)
  Addresses issue
  [\#2](https://github.com/emilioxavier/MSUthemes/issues/2)

- Constructed MSUthemes website using
  [pkgdown](https://pkgdown.r-lib.org/). Thank you
  [@claude](https://github.com/claude)!

- Changed the version number to a convential scheme instead of the
  number of minutes since the UNIX epoch
