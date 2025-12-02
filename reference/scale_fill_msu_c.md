# Plotting with MSU palettes for fill with ggplot2

Plotting with MSU palettes for fill with ggplot2

## Usage

``` r
scale_fill_msu_c(palette, direction = 1, ...)
```

## Arguments

- palette:

  name of palette. Run `names(MSUpalettes)` to view options.

- direction:

  Sets order of colors. Default palette_choice is 1. If direction is -1,
  palette_choice color order is reversed

- ...:

  Other arguments passed on to
  [`scale_fill_gradientn`](https://ggplot2.tidyverse.org/reference/scale_gradient.html)

## Value

A ggproto object defining a continuous colour scale for use with
ggplot2.

## Examples

``` r
library(ggplot2)
ggplot(data = mtcars, aes(x = cyl, y = disp, fill = cyl)) +
  geom_col() +
  scale_fill_msu_c(palette = "msu_seq")
```
