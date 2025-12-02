# Styling Plots with MSUthemes

## Styling Plots with base-R and ggplot2

This document introduces the MSUthemes packages and the included colour
palettes by discussing the technical details of how to change the style
of plots built with some of the most common types of software used to
create data visualisations.

For simplicity, base R and {ggplot2} examples are provided. Often base R
plots are constructed using plotting functions built into specialized
packages. Though, it is common and advisable to construct plots using
{ggplot2} due to its robust collection of plotting methods and the
ability to design and format plots to the needed requirements.

### Big Ten Dataset (1996-2023)

To demonstrate how to use the colour palettes in {MSUthemes}, a dataset
of historical (1996-2023) admissions and demographics for the 18 Big Ten
institutions is provided. The dataset was constructed from the April 23,
2025 version of the [College Scorecard
dataset](https://collegescorecard.ed.gov/data).

Data related to Michigan State University (MSU) and Big Ten institutions
is used to demonstrate how to use the colour palettes within
{MSUthemes}.

## Installing & Loading {MSUthemes}

You can install the {MSUthemes} package from CRAN using:

``` r
install.packages("MSUthemes")
```

You can install the development version from GitHub though it might not
be as stable as the CRAN version:

``` r
devtools::install_github("emilioxavier/MSUthemes", force=TRUE)
```

Then load the {MSUthemes} package with:

``` r
library(MSUthemes)
```

R \[@RTeam2021\] is a programming language which is popular for
statistical computing and graphics. There are many packages with R that
can be used to create data visualisations, and we don’t aim to cover
them all here. Instead, we address the most common methods: built-in
base R graphics, and the {ggplot2} package \[@Wickham2016a\].

#### Base R

R has built-in graphics capabilities that allow users to make a wide
range of data visualisations without installing any additional packages.
The [Styling Base R Graphics blog post from Jumping
Rivers](https://www.jumpingrivers.com/blog/styling-base-r-graphics/)
\[@JR2018\] provides a nice overview of how to style graphics created in
base R.

**Example**: changing bar plot colours in base R.

If all of the bars, lines, points, etc. should have the same colour, you
can set the `col` argument to have one of the MSU colours. The options
are: `msu_red`, `msu_blue`, `msu_green`, `msu_orange`, or `msu_yellow`.

``` r
library(dplyr)
```

    Attaching package: 'dplyr'

    The following objects are masked from 'package:stats':

        filter, lag

    The following objects are masked from 'package:base':

        intersect, setdiff, setequal, union

``` r
barplot(C150_4 ~ entry_term, data=filter(BigTen, name=="MSU"),
        col = msu_green,
        main = "MSU Graduation Rate (1997 - 2023)",
        xlab = "Graduation Year of Incoming Class", ylab = "6-Year Graduation Rate")
```

![](introduction_files/figure-html/MSU%20Green%20barplot-1.png)

![Bar plots visualising plant growth of average height for different
treatments with user specified colours red, blue, and dark
green.](images/tools-greens-base.png)

Bar plot with bars coloured in *Michigan State University (MSU)* green.

If the colours in your plot are based on values in your data, you can
set the default colours using the
[`palette()`](https://rdrr.io/r/grDevices/palette.html) function. Within
{MSUthemes}, the
[`set_msu_palette()`](https://emilioxavier.github.io/MSUthemes/reference/set_msu_palette.md)
function changes the default colours used. There are currently three
palettes available in {MSUthemes}, although we hope to add more in the
future. The options are `msu_qual1`, `msu_div`, or `msu_seq`.

``` r
set_msu_palette("msu_qual1")
plot(1:13, 1:13, col=1:13, pch=19, cex=3, xlab="", ylab="",
     main = "Example of Michigan State University (MSU) Colour Palette Plot",
     sub = "Source: Sequential Values")
abline(h=1:13, v=1:13, col = "lightgrey")
```

![](introduction_files/figure-html/MSU%20qualitative%20palette%201%20(base%20R)-1.png)

``` r
set_msu_par()
barplot(C150_4 ~ entry_term, data=filter(BigTen, name == "MSU"),
        col = set_msu_palette("msu_qual1"),
        main = "MSU Graduation Rate (1997 - 2023)",
        xlab = "Graduation Year of Incoming Class", ylab = "6-Year Graduation Rate")
```

![](introduction_files/figure-html/MSU%20qualitative%20palette%201%20(base%20R;%20barplot)-1.png)

![Another version of the barplot showing the colours from the
\`msu_qual1\` palette.](images/tools-qual-base.png)

Another version of the barplot showing the colours from the `msu_qual1`
palette.

Run `palette("default")` to reset to original base R colours.

**Example**: changing the styling of base R plots.

Within the [`plot()`](https://rdrr.io/r/graphics/plot.default.html)
function (and related base R plotting functions such as
[`barplot()`](https://rdrr.io/r/graphics/barplot.html), and
[`hist()`](https://rdrr.io/r/graphics/hist.html)) , there are arguments
to control how the non-data elements of the plot look. For example, the
`family` argument changes which font family is used. You can also set
many of these arguments globally by calling the
[`par()`](https://rdrr.io/r/graphics/par.html) function. Within
{MSUthemes}, there is a function
[`set_msu_par()`](https://emilioxavier.github.io/MSUthemes/reference/set_msu_par.md)
which sets some default options, including the text alignment and font
for all base R plots. We also recommend adding reference lines using the
[`abline()`](https://rdrr.io/r/graphics/abline.html) function.

``` r
set_msu_par()
plot(1:13, 1:13, col=1:13, pch=19, cex=3, xlab="", ylab="",
     main = "Example of Michigan State University (MSU) Colour Palette Plot",
     sub = "Source: Sequential Values")
abline(h=1:13, v=1:13, col = "lightgrey")
```

![](introduction_files/figure-html/MSU%20qualitative%20palette%201%20(MSU%20theme%20in%20base%20R)-1.png)

![Scatter plot showing the base R styling implemented by the Michigan
State University (MSU) par function.](images/tools-theme-base.png)

Scatter plot showing the base R styling implemented by
[`set_msu_par()`](https://emilioxavier.github.io/MSUthemes/reference/set_msu_par.md).

#### {ggplot2}

Base-R provides the ability to quickly and simply construct initial
plots to understand the data and results of interest. More in-depth
plots displaying the desired and refined information of interest are
best constructed using {ggplot2}.[¹](#fn1) The following examples
demonstrate how to use the MSU and Big Ten colour palettes using
historical institutional data. The [ggplot2
documentation](https://ggplot2.tidyverse.org/) illustrates how to create
various types of plots. Within the [ggplot2: Elegant Graphics for Data
Analysis (3e)](https://ggplot2-book.org/index.html) book, information on
[changing the colours](https://ggplot2-book.org/scales-colour.html) and
[refinement](https://ggplot2-book.org/mastery.html) of {ggplot2}
visualisations, is provided by Hadley Wickham, Danielle Navarro, &
Thomas Lin Pedersen\[@Wickham2016a\].[²](#fn2) Recipe-focused examples
are available in [Cookbook for R](http://www.cookbook-r.com/) by Winston
Chang or [R Cookbook, 2nd Edition](https://rc2e.com/) by James (JD) Long
& Paul Teetor[³](#fn3).

Let’s set up a basic MSU and Big Ten datasets to make plots with
{ggplot2}.

``` r
library(ggplot2)
library(dplyr)

set_msu_par()  ## reset graphics par(ameters)

MSU_df <- filter(BigTen, name == "MSU")
```

### MSU Color Palettes in {ggplot2}

**Example**: changing the non-mapped colours in {ggplot2}.

In {ggplot2}, the `colour` (or `color`) argument changes the colour
outlining an element, and `fill` changes the colour filling the element.
If all of the, *e.g.*, bars, lines, or points should have the same
colour, you can set either the `fill` or `colour` arguments to have one
of the MSU colours. The options are: `msu_red`, `msu_blue`, `msu_green`,
`msu_orange`, or `msu_yellow`.

``` r
ggplot(data = MSU_df,
       mapping = aes(x = entry_term, y = UGDS)) +
  geom_col(fill = msu_yellow)
```

![](introduction_files/figure-html/MSU%20grellow%20barplot%20(ggplot2)-1.png)

![Bar plot with bars coloured yellow](images/tools-yellow-bars.png)

Bar plot with bars coloured yellow.

**Example**: using a discrete colour scale in {ggplot2}.

For working with qualitative (discrete) data, the best palette to use is
`"msu_qual1"`. This palette currently only contains four colours.

- Discrete (fill) scale:
  [`scale_fill_msu_d()`](https://emilioxavier.github.io/MSUthemes/reference/scale_fill_msu_d.md)

``` r
ggplot(data = slice(MSU_df, 1:13),
       mapping = aes(x = entry_term, y = UGDS, fill = factor(entry_term))) +
  geom_col() +
  scale_fill_msu_d(palette = "msu_qual1")
```

![](introduction_files/figure-html/MSU%20qualitative%20palette%201%20(ggplot2;%20barplot)-1.png)

![Bar plot with colours from msu_qual1](images/tools-qual-bars.png)

Bar plot with colours from `msu_qual1`.

- Discrete (colour) scale:
  [`scale_colour_msu_d()`](https://emilioxavier.github.io/MSUthemes/reference/scale_colour_msu_d.md)

``` r
ggplot(data = slice(MSU_df, 1:4),
       mapping = aes(x = entry_term, y = UGDS, colour = factor(entry_term))) +
  geom_point(size = 6) +
  scale_colour_msu_d(palette = "msu_qual2")
```

![](introduction_files/figure-html/MSU%20qualitative%20palette%202%20(ggplot;%20scatterplot)-1.png)

![Scatter plot with colours from
msu_qual2](images/tools-qual-points.png)

Scatter plot with colours from `msu_qual2`.

**Example**: using a continuous colour scale in {ggplot2}.

Continuous colour scales may be sequential or diverging. For working
with sequential (continuous) data, the best palette to use is
`"msu_seq"`.

- Continuous (fill) scale:
  [`scale_fill_msu_c()`](https://emilioxavier.github.io/MSUthemes/reference/scale_fill_msu_c.md)

``` r
ggplot(data = slice(MSU_df, 1:13),
       mapping = aes(x = entry_term, y = UGDS, fill = UGDS)) +
  geom_col() +
  scale_fill_msu_c(palette = "msu_seq")
```

![](introduction_files/figure-html/MSU%20green%20sequence%20(ggplot2;%20barplot)-1.png)

![Bar plot showing sequential green colour
palette](images/tools-seq-bars.png)

Bar plot showing sequential green colour palette.

- Continuous (colour) scale:
  [`scale_colour_msu_c()`](https://emilioxavier.github.io/MSUthemes/reference/scale_colour_msu_c.md)

``` r
ggplot(data = MSU_df,
       mapping = aes(x = entry_term, y = UGDS, colour = UGDS)) +
  geom_point(size = 6) +
  scale_colour_msu_c(palette = "msu_seq")
```

![](introduction_files/figure-html/MSU%20green%20sequence%20(ggplot2;%20scatterplot)-1.png)

![Scatter plot showing sequential green colour
palette](images/tools-seq-points.png)

Scatter plot showing sequential green colour palette.

For working with diverging (continuous) data, the best palette to use is
`"msu_div"`.

- Continuous (fill) scale:
  [`scale_fill_msu_c()`](https://emilioxavier.github.io/MSUthemes/reference/scale_fill_msu_c.md)

``` r
ggplot(data = MSU_df,
       mapping = aes(x = entry_term, y = UGDS, fill = UGDS)) +
  geom_col() +
  scale_fill_msu_c(palette = "msu_div")
```

![](introduction_files/figure-html/MSU%20divergent%20sequence%20(red-to-blue;%20ggplot2;%20barplot)-1.png)

![Bar plot showing diverging red to blue
palette](images/tools-div-bars.png)

Bar plot showing diverging red to blue palette.

If you want to centre the diverging scale around a different value, you
can alternatively pass the pre-defined colours from {MSUthemes} into
[`scale_fill_gradient2()`](https://ggplot2.tidyverse.org/reference/scale_gradient.html)
in {ggplot2}:

``` r
ggplot(data = MSU_df,
       mapping = aes(x = entry_term, y = UGDS, fill = UGDS)) +
  geom_col() +
  scale_fill_gradient2(low = msu_orange,
                       high = msu_purple,
                       midpoint = median(MSU_df$UGDS, na.rm = TRUE))
```

![](introduction_files/figure-html/MSU%20divergent%20sequence%20(orange-to-purple;%20ggplot2;%20barplot)-1.png)

![Bar plot showing diverging orange to purple palette centred at the
median undergraduate population for Big Ten
institutions](images/tools-div-bars-grad.png)

Bar plot showing diverging orange to purple palette centred at the
median undergraduate population for Big Ten institutions.

**Example**: changing the theme in {ggplot2}.

Within {ggplot2}, themes allow you to control the appearance of the
non-data elements of your plot. The default theme is
[`theme_grey()`](https://ggplot2.tidyverse.org/reference/ggtheme.html)
which has a darker background. We recommend using a white or transparent
background, such as those created with
[`theme_minimal()`](https://ggplot2.tidyverse.org/reference/ggtheme.html)
or [`theme_bw()`](https://ggplot2.tidyverse.org/reference/ggtheme.html).

You can also use
[`theme_MSU()`](https://emilioxavier.github.io/MSUthemes/reference/theme_MSU.md)
from {MSUthemes} which additionally sets the plot font to Metropolis
(used in MSU branding). Check that you have already run
[`library(MSUthemes)`](https://github.com/emilioxavier/MSUthemes) to
ensure the fonts load correctly.

``` r
BigTen_2023 <- filter(BigTen, entry_term == 2023)

ggplot(data = BigTen_2023, aes(x = reorder(name, UGDS), y = UGDS, fill = ADM_RATE)) +
  geom_col() +
  scale_fill_msu_c(palette = "msu_div") +
  scale_y_continuous(labels = scales::comma) +
  labs(x = NULL,
       y = "Undergraduate Enrollment",
       title = "Big Ten Enrollment (2023)",
       subtitle = "Bars Shaded by Admission Rate",
       fill = "Admission Rate") +
  theme_MSU() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
```

![](introduction_files/figure-html/MSU%20divergent%20sequence%20(red-to-blue;%20ggplot2+theme_MSU;%20barplot)-1.png)

![Bar plot showing Big Ten enrollment with MSU
theme](images/tools-theme.png)

Bar plot styled with
[`theme_MSU()`](https://emilioxavier.github.io/MSUthemes/reference/theme_MSU.md).

### Using Big Ten Institutional Colors

The {MSUthemes} package includes comprehensive color support for all Big
Ten institutions, making it easy to create multi-institutional
comparisons with consistent, recognizable branding.

**Example**: comparing Big Ten institutions with institutional colors.

``` r
BigTen_2023 <- filter(BigTen, entry_term == 2023)

ggplot(data = BigTen_2023,
       aes(x = ADM_RATE, y = C150_4, size = UGDS, colour = name, label = name)) +
  geom_point(alpha = 0.7) +
  ggrepel::geom_text_repel(size = 3,
                           colour = "black",
                           show.legend = FALSE, max.overlaps = 20) +
  scale_x_continuous(labels = scales::percent) +
  scale_y_continuous(labels = scales::percent) +
  scale_colour_manual(values = bigten_colors_primary) +
  scale_size_continuous(labels = scales::comma, range = c(3, 12)) +
  guides(size = guide_legend(title = "Undergraduate\nEnrollment"),
         colour = "none") +
  labs(x = "Admission Rate",
       y = "6-Year Graduation Rate",
       title = "Big Ten Institutional Comparison (2023)",
       subtitle = "Each institution shown in its official primary color") +
  theme_MSU()
```

![](introduction_files/figure-html/Big%20Ten%20colour%20palette%20(ggplot2+theme_MSU;%20scatterplot)-1.png)

![Scatter plot showing Big Ten institutions with official institutional
colors](images/tools-bigten-comparison.png)

Scatter plot comparing Big Ten institutions using official colors.

If you find a bug in the {MSUthemes} package, or something that isn’t
working quite as you expected, please submit a [GitHub
issue](https://github.com/emilioxavier/MSUthemes/issues).

#### Exporting images from R

Given the wide ranging places you might be including your plots
(including but not limited to slide decks documents, or websites), the
desired dimensions (height and width), pixel density (commonly
resolution or DPI), and file type (EPS, PDF, JPEG, JPG, PNG, TIFF, or
SVG to name a few) will vary and can impact the final appearance of your
plot.\[FOOTNOTE: EPS, PDF, and SVG file types allow the easy resizing of
your images.\] Thus, using a standard file writing method you understand
and are comfortable using while provides the high quality images should
be the reason for selecting the method.

While there are several ways to export plots from R,
[`ggplot2::ggsave()`](https://ggplot2.tidyverse.org/reference/ggsave.html)
(or its derivative `cowplot::ggsave2()`) offer robust interfaces to
create the desired file types. We strongly discourage using the *Export*
button on the *Plots* pane in RStudio or Visual Studio Code, as these
methods do not result in images with the required publication resolution
of at least 300 dpi.

The minimum image resolution for images published in print is 300 dpi.
If you use
[`ggsave()`](https://ggplot2.tidyverse.org/reference/ggsave.html) from
{ggplot2}, 300 dpi is the default resolution. We recommend saving images
in PDF or EPS file format as this makes it easier for them to be
resized.

**Example**: exporting with base R graphics

``` r
pdf(file = "MSU-feature-plot.pdf",  # name of file
    width = 7,                      # width in inches
    height = 5                      # height in inches
    )
barplot(C150_4 ~ entry_term, data = filter(BigTen, name == "MSU"),
        col = msu_green,
        main = "MSU Graduation Rate (1997 - 2023)",
        xlab = "Graduation Year of Incoming Class",
        ylab = "6-Year Graduation Rate")
dev.off()
```

**Example**: exporting with {ggplot2} using
[`ggsave()`](https://ggplot2.tidyverse.org/reference/ggsave.html)

``` r
# Create a plot
p <- ggplot(data = MSU_df, aes(x = entry_term, y = UGDS, fill = UGDS)) +
  geom_col() +
  scale_fill_msu_c(palette = "msu_seq") +
  labs(title = "MSU Undergraduate Enrollment",
       x = "Entry Term",
       y = "Undergraduate Enrollment") +
  theme_MSU()

# Save the plot
ggsave(filename = "MSU-enrollment.pdf",
       plot = p,
       width = 8,
       height = 6,
       dpi = 300)

# For PNG format
ggsave(filename = "MSU-enrollment.png",
       plot = p,
       width = 8,
       height = 6,
       dpi = 300)
```

------------------------------------------------------------------------

1.  Yes, base-R can make amazing data visualisations. Unfortunately,
    base-R is not as flexible as {ggplot2}. Please, don’t @ me.

2.  The linked webpages are a work in progress and might not be very
    helpful in their current forms.

3.  Please see the [Graphics chapter](https://rc2e.com/graphics).
