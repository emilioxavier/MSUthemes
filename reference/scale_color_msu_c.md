# Plotting with MSU palettes for colour ggplot2

Plotting with MSU palettes for colour ggplot2

## Usage

``` r
scale_color_msu_c(palette, direction = 1, ...)
```

## Arguments

- palette:

  name of palette. Run `names(MSUpalettes)` to view options.

- direction:

  Sets order of colors. Default palette_choice is 1. If direction is -1,
  palette_choice color order is reversed

- ...:

  Other arguments passed on to
  [`scale_color_gradientn`](https://ggplot2.tidyverse.org/reference/scale_gradient.html)

## Value

A ggproto object defining a continuous colour scale for use with
ggplot2.

## Examples

``` r
library(ggplot2)
ggplot(data = mtcars, aes(x = mpg, y = disp, color = wt)) +
  geom_point() +
  scale_color_msu_c(palette = "msu_seq")
```
