# Big Ten Institution Primary & Sceondary Color Palette

Get Big Ten colors for specific institutions

## Usage

``` r
get_bigten_colors(institutions, type = "primary")
```

## Arguments

- institutions:

  Character vector of institution names (should match names in
  bigten_colors_primary)

- type:

  Either "primary" or "secondary" colors

## Value

Named character vector of hex colors

## Examples

``` r
# Get primary colors for specific institutions
get_bigten_colors(c("Michigan", "Ohio State", "MSU"))
#>   Michigan Ohio State        MSU 
#>  "#ffcb05"  "#bb0000"  "#18453b" 

# Get secondary colors
get_bigten_colors(c("Michigan", "Northwestern"), type = "secondary")
#>     Michigan Northwestern 
#>    "#00274c"    "#e4e0ee" 

# Use in ggplot with scale_fill_manual
library(ggplot2)
my_colors <- get_bigten_colors(c("Michigan", "Ohio State", "MSU"))
BigTenData <- data.frame(
  institution = c("Michigan", "Ohio State", "MSU"),
  value = c(10, 15, 20)
)
ggplot(data=BigTenData) +
  geom_bar(aes(x = institution, y = value, fill = institution),
           stat="identity") +
  scale_fill_manual(values = my_colors)
```
