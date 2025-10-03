#' Plotting with Big Ten palettes for fill ggplot2
#' @param palette Type of palette: "primary" or "secondary"
#' @param direction Sets order of colors. Default direction is 1. If direction is -1,
#' palette color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#' @return A ggproto object defining a discrete fill scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = mpg, y = disp, fill = factor(cyl))) +
#'   geom_point(shape = 21) +
#'   scale_fill_bigten_d(palette = "primary")
#' @export

scale_fill_bigten_d <- function(palette = "primary", direction = 1, ...) {
  bigten_cols_disc <- function(palette, direction = 1) {
    `%notin%` <- Negate(`%in%`)

    palette_choice <- if (palette == "primary") {
      unname(bigten_colors_primary)
    } else if (palette == "secondary") {
      unname(bigten_colors_secondary)
    } else {
      stop("Palette must be 'primary' or 'secondary'.")
    }

    if (direction %notin% c(1, -1)) {
      stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
    }

    function(n) {
      if (direction == 1) {
        palette_choice[1:n]
      } else {
        rev(palette_choice)[1:n]
      }
    }
  }

  ggplot2::discrete_scale(
    aesthetics = "fill",
    name = "bigten_d",
    palette = bigten_cols_disc(palette = palette, direction = direction), ...
  )
}