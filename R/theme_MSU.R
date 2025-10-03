#' @title Michigan State University (MSU) Theme
#'
#' @description Custom ggplot2 theme
#'
#' @param base_family Font used for all text elements. Default "Metropolis".
#' @param base_size Base font size for text elements. Default 12.
#' @param header_family Font family for titles and headers. The default, NULL, uses theme inheritance to set the font. This setting affects axis titles, legend titles, the plot title and tag text.
#' @param accent Accent colour. Default bright blue, "#3366FF"
#' @param base_line_size Base line size is `base_size/22`
#' @param base_rect_size Base rectangle size is `base_size/22`
#' @param rel_small Relative size of small text (e.g., axis tick labels)
#' @param rel_tiny Relative size of tiny text (e.g., caption)
#' @param rel_large Relative size of large text (e.g., title)
#' @param ink Text colour. Default "black".
#' @param paper Background colour. Default "white".
#' @return A ggplot2 theme
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = mpg, y = disp, color = wt)) +
#'   geom_point() +
#'   theme_MSU()
#'
#' @importFrom ggplot2 margin %+replace% theme element_line element_rect element_text element_blank rel
#' @importFrom grid unit
#' @export
#'
#'

theme_MSU <- function(base_size = 11, base_family = "Metropolis", header_family = NULL,
                      base_line_size = base_size/22, base_rect_size = base_size/22,
                      rel_small = 12/14, rel_tiny = 11/14, rel_large = 16/14,
                      ink = "black", paper = "white", accent = "#3366FF") {

# theme_bw(base_size = base_size,
#          base_family = base_family,
#          header_family = header_family,
#          base_line_size = base_line_size,
#          base_rect_size = base_rect_size,
#          ink = ink,
#          paper = paper,
#          accent = accent) %+replace% theme(panel.border = element_blank(),
#          panel.grid = element_blank(),
#          axis.text = element_text(size = rel(0.8)),
#          axis.line = element_line(lineend = "square"),
#          axis.ticks = element_line(),
#          strip.background = element_rect(linewidth = rel(2)),
#          complete = TRUE)


  half_line <- base_size / 2
  small_size <- rel_small * base_size

  ## start with ggplot2::theme_classic()
  ggplot2::theme_classic(base_size = base_size, base_family = base_family, paper=paper) %+replace%
    theme(
      line              = element_line(color = ink, linewidth = base_line_size, linetype = 1, lineend = "butt"),
      rect              = element_rect(fill = NA, color = NA, linewidth = base_line_size, linetype = 1),
      text              = element_text(family = base_family, face = "plain", color = ink,
                                       size = base_size, hjust = 0.5, vjust = 0.5, angle = 0, lineheight = .9,
                                       margin = margin(), debug = FALSE),

      axis.line         = element_line(color = ink, linewidth = base_line_size, lineend = "square"),
      axis.line.x       = NULL,
      axis.line.y       = NULL,
      axis.text         = element_text(color = ink, size = small_size),
      axis.text.x       = element_text(margin = margin(t = small_size / 4), vjust = 1),
      axis.text.x.top   = element_text(margin = margin(b = small_size / 4), vjust = 0),
      axis.text.y       = element_text(margin = margin(r = small_size / 4), hjust = 1),
      axis.text.y.right = element_text(margin = margin(l = small_size / 4), hjust = 0),
      axis.ticks        = element_line(color = ink, linewidth = base_line_size),
      axis.ticks.length = unit(half_line / 2, "pt"),
      axis.title.x      = element_text(
                            margin = margin(t = half_line / 2),
                            vjust = 1
                          ),
      axis.title.x.top  = element_text(
                            margin = margin(b = half_line / 2),
                            vjust = 0
                          ),
      axis.title.y      = element_text(
                            angle = 90,
                            margin = margin(r = half_line / 2),
                            vjust = 1
                          ),
      axis.title.y.right = element_text(
                             angle = -90,
                             margin = margin(l = half_line / 2),
                             vjust = 0
                           ),


      legend.background = element_blank(),
      legend.spacing    = unit(base_size, "pt"),
      legend.spacing.x  = NULL,
      legend.spacing.y  = NULL,
      legend.margin     = margin(0, 0, 0, 0),
      legend.key        = element_blank(),
      legend.key.size   = unit(1.1 * base_size, "pt"),
      legend.key.height = NULL,
      legend.key.width  = NULL,
      legend.text       = element_text(size = rel(rel_small)),
      legend.text.align = NULL,
      legend.title      = element_text(hjust = 0),
      legend.title.align = NULL,
      legend.position   = "bottom",
      legend.direction  = NULL,
      legend.justification = c("left", "center"),
      legend.box        = NULL,
      legend.box.margin =  margin(0, 0, 0, 0),
      legend.box.background = element_blank(),
      legend.box.spacing = unit(base_size, "pt"),

      panel.background  = element_blank(),
      panel.border      = element_blank(),
      panel.grid        = element_blank(),
      panel.grid.major  = NULL,
      panel.grid.minor  = NULL,
      panel.grid.major.x = NULL,
      panel.grid.major.y = NULL,
      panel.grid.minor.x = NULL,
      panel.grid.minor.y = NULL,
      panel.spacing     = unit(half_line, "pt"),
      panel.spacing.x   = NULL,
      panel.spacing.y   = NULL,
      panel.ontop       = FALSE,

      strip.background  = element_rect(fill = "grey80"),
      strip.text        = element_text(
                            colour=msu_green,
                            size = rel(rel_small),
                            margin = margin(half_line / 2, half_line / 2,
                                            half_line / 2, half_line / 2)
                          ),
      strip.text.x      = NULL,
      strip.text.y      = element_text(angle = -90),
      strip.placement   = "inside",
      strip.placement.x =  NULL,
      strip.placement.y =  NULL,
      strip.switch.pad.grid = unit(half_line / 2, "pt"),
      strip.switch.pad.wrap = unit(half_line / 2, "pt"),

      plot.background   = element_blank(),
      plot.title        = element_text(
                            face = "bold",
                            size = rel(rel_large),
                            hjust = 0, vjust = 1,
                            margin = margin(b = half_line)
                          ),
      plot.subtitle     = element_text(
                            size = rel(rel_small),
                            hjust = 0, vjust = 1,
                            margin = margin(b = half_line)
                          ),
      plot.caption      = element_text(
                            size = rel(rel_tiny),
                            hjust = 1, vjust = 1,
                            margin = margin(t = half_line)
                          ),
      plot.tag           = element_text(
                             face = "bold",
                             hjust = 0, vjust = 0.7
                           ),
      plot.tag.position = c(0, 1),
      plot.margin       = margin(half_line, half_line, half_line, half_line),

      complete = TRUE
    )

}


# theme_MSU <- function(base_family = "Metropolis",
#                       base_size = 12, base_line_size = .5,
#                       rel_small = 12/14, rel_tiny = 11/14, rel_large = 16/14,
#                       hjust = 0,
#                       text_col = "black",
#                       bg_col = "white",
#                       ink = "black", paper = "white", accent = "#3366FF"
#                       ) {


#   ggplot2::theme_minimal(
#     base_family = family,
#     base_size = base_size
#   ) +
#     ggplot2::theme(
#       # title
#       plot.title = ggplot2::element_text(
#         face = "bold",
#         hjust = hjust,
#         colour = text_col
#       ),
#       plot.title.position = "plot",
#       # subtitle
#       plot.subtitle = ggplot2::element_text(
#         hjust = hjust,
#         colour = text_col,
#         margin = ggplot2::margin(b = 10)
#       ),
#       # caption
#       plot.caption = ggplot2::element_text(
#         hjust = hjust,
#         colour = text_col
#       ),
#       plot.caption.position = "plot",
#       # axis
#       axis.title = ggplot2::element_text(
#         colour = text_col
#       ),
#       axis.title.x = ggplot2::element_text(
#         margin = ggplot2::margin(t = 10, b = -10),
#         colour = text_col
#       ),
#       axis.title.y = ggplot2::element_text(
#         margin = ggplot2::margin(r = 10),
#         colour = text_col
#       ),
#       axis.text = ggplot2::element_text(
#         colour = text_col
#       ),
#       # plot
#       plot.margin = ggplot2::margin(10, 10, 10, 10),
#       plot.background = ggplot2::element_rect(
#         fill = bg_col,
#         colour = bg_col
#       ),
#       panel.background = ggplot2::element_rect(
#         fill = bg_col,
#         colour = bg_col
#       ),
#       # legend
#       legend.position = "bottom",
#       legend.text = ggplot2::element_text(
#         colour = text_col
#       ),
#       legend.title = ggplot2::element_text(
#         colour = text_col
#       ),
#       legend.background = ggplot2::element_rect(
#         fill = "transparent",
#         colour = "transparent"
#       ),
#       legend.key = ggplot2::element_rect(
#         fill = "transparent",
#         colour = "transparent"
#       ),
#       # facets
#       strip.background = ggplot2::element_rect(
#         # fill = "transparent",
#         # colour = "transparent"
#         fill = "grey80",
#         colour = "grey80"
#       ),
#       strip.text = ggplot2::element_text(
#         colour = text_col
#       )
#     )
# }
