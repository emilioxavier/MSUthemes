#' Plotting with MSU palettes for colour ggplot2
#' @param palette name of palette. Run \code{names(MSUpalettes)} to view options.
#' @param direction Sets order of colors. Default palette_choice is 1. If direction is -1,
#' palette_choice color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_color_gradientn}}
#' @return A ggproto object defining a continuous colour scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = mpg, y = disp, color = wt)) +
#'   geom_point() +
#'   scale_colour_msu_c(palette = "msu_seq")
#' @export

scale_colour_msu_c <- scale_color_msu_c
