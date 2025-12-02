# Plotting with Big Ten palettes for colour ggplot2

Plotting with Big Ten palettes for colour ggplot2

## Usage

``` r
scale_color_bigten_d(palette = "primary", direction = 1, ...)
```

## Arguments

- palette:

  Type of palette: "primary" or "secondary"

- direction:

  Sets order of colors. Default direction is 1. If direction is -1,
  palette color order is reversed

- ...:

  Other arguments passed on to
  [`discrete_scale`](https://ggplot2.tidyverse.org/reference/discrete_scale.html)

## Value

A ggproto object defining a discrete colour scale for use with ggplot2.

## Examples

``` r
library(ggplot2)
ggplot(data = mtcars, aes(x = mpg, y = disp, color = factor(cyl))) +
  geom_point() +
  scale_color_bigten_d(palette = "primary")
```
