#' Set MSU base R plotting palette
#'
#' @param palette Name of palette. See \code{names(MSUthemes::MSUpalettes)}.
#' @return Returns a character vector giving the colors from the palette which
#' was in effect. This is invisible unless the argument is omitted.
#' @examples
#' set_msu_palette("msu_qual1")
#' @export

set_msu_palette <- function(palette) {
  palette_choice <- MSUpalettes[[palette]]
  if (is.null(palette_choice) || is.numeric(palette)) {
    stop("Palette does not exist. Use names(MSUpalettes) to find valid palette.")
  }
  grDevices::palette(palette_choice[[1]])
}
