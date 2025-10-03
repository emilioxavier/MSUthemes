#' Plotting with Big Ten palettes for colour ggplot2 (British spelling)
#' @param palette Type of palette: "primary" or "secondary"
#' @param direction Sets order of colors. Default direction is 1. If direction is -1,
#' palette color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#' @return A ggproto object defining a discrete colour scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = mpg, y = disp, colour = factor(cyl))) +
#'   geom_point() +
#'   scale_colour_bigten_d(palette = "primary")
#' @export

scale_colour_bigten_d <- scale_color_bigten_d