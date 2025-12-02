# Plotting with MSU palettes for fill colour ggplot2

Plotting with MSU palettes for fill colour ggplot2

## Usage

``` r
scale_fill_msu_d(palette, direction = 1, ...)
```

## Arguments

- palette:

  name of palette. Run `names(MSUpalettes)` to view options.

- direction:

  Sets order of colors. Default direction is 1. If direction is -1,
  palette_choice color order is reversed

- ...:

  Other arguments passed on to
  [`discrete_scale`](https://ggplot2.tidyverse.org/reference/discrete_scale.html)

## Value

A ggproto object defining a discrete fill scale for use with ggplot2.

## Examples

``` r
library(ggplot2)
ggplot(data = mtcars, aes(x = cyl, y = disp, fill = factor(cyl))) +
  geom_col() +
  scale_fill_msu_d(palette = "msu_qual1")
```
