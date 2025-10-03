#' @title Big Ten Institution Primary & Sceondary Color Palette
#' @description Get Big Ten colors for specific institutions
#'
#' @param institutions Character vector of institution names (should match names in bigten_colors_primary)
#' @param type Either "primary" or "secondary" colors
#' @return Named character vector of hex colors
#' @examples
#' # Get primary colors for specific institutions
#' get_bigten_colors(c("Michigan", "Ohio State", "MSU"))
#'
#' # Get secondary colors
#' get_bigten_colors(c("Michigan", "Northwestern"), type = "secondary")
#'
#' # Use in ggplot with scale_fill_manual
#' library(ggplot2)
#' my_colors <- get_bigten_colors(c("Michigan", "Ohio State", "MSU"))
#' BigTenData <- data.frame(
#'   institution = c("Michigan", "Ohio State", "MSU"),
#'   value = c(10, 15, 20)
#' )
#' ggplot(data=BigTenData) +
#'   geom_bar(aes(x = institution, y = value, fill = institution),
#'            stat="identity") +
#'   scale_fill_manual(values = my_colors)
#' @export

get_bigten_colors <- function(institutions, type = "primary") {

  if (!type %in% c("primary", "secondary")) {
    stop("type must be either 'primary' or 'secondary'")
  }

  color_vector <- if (type == "primary") {
    bigten_colors_primary
  } else {
    bigten_colors_secondary
  }

  # Check if all institutions are available
  missing_institutions <- institutions[!institutions %in% names(color_vector)]
  if (length(missing_institutions) > 0) {
    stop("Institution(s) not found: ", paste(missing_institutions, collapse = ", "),
         "\nAvailable institutions: ", paste(names(color_vector), collapse = ", "))
  }

  color_vector[institutions]
}
