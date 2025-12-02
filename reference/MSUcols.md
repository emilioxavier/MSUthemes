# Generates the colour palettes

Generates the colour palettes

## Usage

``` r
MSUcols(palette, n, type = "discrete", direction = 1)
```

## Arguments

- palette:

  Name of Palette. Run `names(MSUpalettes)` to view options.

- n:

  Number of desired colors. If number of requested colors is beyond the
  scope of the palette, colors are automatically interpolated. If n is
  not provided, the length of the palette is used.

- type:

  Either "continuous" or "discrete". Use continuous if you want to
  automatically interpolate between colors. Default "discrete"

- direction:

  Sets order of colors. Default palette is 1. If direction is -1,
  palette color order is reversed

## Value

A character vector of hex colour codes.

## Examples

``` r
MSUcols("msu_seq")
```
