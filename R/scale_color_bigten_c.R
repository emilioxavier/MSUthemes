#' Plotting with Big Ten palettes for colour ggplot2
#' @param palette Type of palette: "primary" or "secondary"
#' @param direction Sets order of colors. Default is 1. If direction is -1,
#' palette color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_color_gradientn}}
#' @return A ggproto object defining a continuous colour scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = mpg, y = disp, color = wt)) +
#'   geom_point() +
#'   scale_color_bigten_c(palette = "primary")
#' @export

scale_color_bigten_c <- function(palette = "primary", direction = 1, ...) {
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
  } else {
    colors <- if (direction == 1) {
      palette_choice
    } else {
      rev(palette_choice)
    }
    ggplot2::scale_color_gradientn(colors = colors, ...)
  }
}