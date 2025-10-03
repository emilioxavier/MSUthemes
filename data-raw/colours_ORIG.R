# Backup of original MSU_palettes.R
# Created by automated split on 2025-09-22

#' Complete list of palettes.
#'
#' Use \code{names(MSUpalettes)} to return all palette names.
#'
#' @export
MSUpalettes <- list(
  msu_seq = list(
    c(
      "#18453b", "#2f574e", "#466a62",
      "#5d7c75", "#748f89", "#8ba29d",
      "#a2b4b0", "#b9c7c4", "#d0d9d7",
      "#e7eceb"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
    "seq"
  ),
  msu_seq_red = list(
    c(
      "#280d01", "#511d06", "#792f0e",
      "#a24319", "#cb5a28", "#d5764c",
      "#df9573", "#eab69e", "#f4d9cd"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "seq"
  ),
  msu_seq_purple = list(
    c(
      "#150012", "#2c0025", "#420038",
      "#58004b", "#6e005f", "#8b1b7b",
      "#a7439a", "#c476ba", "#e2b4db"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "seq"
  ),
  msu_seq_yellow = list(
    c(
      "#313608", "#51590f", "#798418",
      "#a5b326", "#d1de3f", "#d5e051",
      "#dce365", "#e3ed84", "#f2f6c8"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "seq"
  ),
  msu_seq_blue = list(
    c(
      "#282b42", "#3d4263", "#5e668f",
      "#7980a3", "#909ab7", "#a5aabf",
      "#b3b7c9", "#c2c6d4", "#d5d8e3"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "seq"
  ),
  msu_seq_orange = list(
    c(
      "#4b2704", "#6e3b0b", "#945110",
      "#bd6a15", "#f08521", "#f2ac62",
      "#f5c487", "#f7d8ad", "#ffe3bf"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "seq"
  ),
  msu_seq_green = list(
    c(
      "#00230d", "#02461c", "#046a2b",
      "#088d3a", "#0db14b", "#31c067",
      "#5cd088", "#8cdfac", "#c3efd3"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "seq"
  ),
  msu_div = list(
    c(
      "#e41b12", "#eb5751", "#f29490",
      "#f9d1cf", "#ffffff", "#ccebf3",
      "#88d0e3", "#43b6d3", "#009cc4"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "div"
  ),
  msu_core = list(
    c(
      "#18453b", "#ffffff", "#000000"  ## msu green, white, black
    ),
    c(1, 2, 3),
    "core"
  ),
  msu_qual1 = list(
    c(
      "#18453b",                                         ## msu green
      "#0db14b", "#97a2a2", "#f08521", "#008183",  ## kelly green, grey, orange, teal
      "#909ab7", "#535054", "#d1de3f", "#e8d9b5",  ## blue-grey, dark grey, yellow-green, cream
      "#c89a58", "#94ae4a", "#6e005f", "#cb5a28"   ## texas-brown, split pea soup green, eggplant, sienna
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13),
    "qual"
  ),
  msu_qual2 = list(
    c(
      "#18453b", "#f08521", "#6e005f", "#97a2a2"
    ),
    c(1, 2, 3, 4),
    "qual"
  ),
  bigten_primary = list(
    c(
      "#990000", "#18453b", "#4e2a84", "#bb0000", "#001e44", "#cfb991",
      "#cc0033", "#2774ae", "#ff552e", "#ffcd00", "#f0163a", "#ffcb05",
      "#ffcc33", "#d00000", "#007030", "#990000", "#4b2e83", "#da004c"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18),
    "qual"
  ),
  bigten_secondary = list(
    c(
      "#edebeb", "#ffffff", "#e4e0ee", "#666666", "#ffffff", "#000000",
      "#525c5c", "#ffd100", "#13294b", "#000000", "#ffd90f", "#00274c",
      "#7a0019", "#f5f1e7", "#fee11a", "#ffcc00", "#e8e3d3", "#ffffff"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18),
    "qual"
  ),
  bigten_indiana = list(
    c("#990000", "#edebeb"),
    c(1, 2),
    "qual"
  ),
  bigten_msu = list(
    c("#18453b", "#ffffff"),
    c(1, 2),
    "qual"
  ),
  bigten_northwestern = list(
    c("#4e2a84", "#e4e0ee"),
    c(1, 2),
    "qual"
  ),
  bigten_ohiostate = list(
    c("#bb0000", "#666666"),
    c(1, 2),
    "qual"
  ),
  bigten_pennstate = list(
    c("#001e44", "#ffffff"),
    c(1, 2),
    "qual"
  ),
  bigten_purdue = list(
    c("#cfb991", "#000000"),
    c(1, 2),
    "qual"
  ),
  bigten_rutgers = list(
    c("#cc0033", "#525c5c"),
    c(1, 2),
    "qual"
  ),
  bigten_ucla = list(
    c("#2774ae", "#ffd100"),
    c(1, 2),
    "qual"
  ),
  bigten_illinois = list(
    c("#ff552e", "#13294b"),
    c(1, 2),
    "qual"
  ),
  bigten_iowa = list(
    c("#ffcd00", "#000000"),
    c(1, 2),
    "qual"
  ),
  bigten_maryland = list(
    c("#f0163a", "#ffd90f"),
    c(1, 2),
    "qual"
  ),
  bigten_michigan = list(
    c("#ffcb05", "#00274c"),
    c(1, 2),
    "qual"
  ),
  bigten_minnesota = list(
    c("#ffcc33", "#7a0019"),
    c(1, 2),
    "qual"
  ),
  bigten_nebraska = list(
    c("#d00000", "#f5f1e7"),
    c(1, 2),
    "qual"
  ),
  bigten_oregon = list(
    c("#007030", "#fee11a"),
    c(1, 2),
    "qual"
  ),
  bigten_usc = list(
    c("#990000", "#ffcc00"),
    c(1, 2),
    "qual"
  ),
  bigten_washington = list(
    c("#4b2e83", "#e8e3d3"),
    c(1, 2),
    "qual"
  ),
  bigten_wisconsin = list(
    c("#da004c", "#ffffff"),
    c(1, 2),
    "qual"
  )
)

#' MSU Spartan Green hex colour
#' @export
msu_green <- msu_Green <- msu_SpartanGreen <- "#18453b"

#' MSU white hex colour
#' @export
msu_white <- "#ffffff"

#' MSU black hex colour
#' @export
msu_black <- "#000000"

#' MSU Kelly Green hex colour
#' @export
msu_Kelly <- "#008208"

#' MSU Lime Green hex colour
#' @export
msu_Lime <- "#7bbd00"

#' MSU Excellence Green hex colour
#' @export
msu_Excellence <- "#0b9a6d"

#' MSU Refresh Green hex colour
#' @export
msu_Refresh <- "#008934"

#' MSU green hex colour
#' @export
msu_green <- "#0db14b"

#' MSU grey/gray hex colour
#' @export
msu_grey <- msu_gray <- "#97a2a2"

#' MSU orange hex colour
#' @export
msu_orange <- "#f08521"

#' MSU teal hex colour
#' @export
msu_teal <- "#008183"

#' MSU blue (aka blue-grey or blue-gray) hex colour
#' @export
msu_blue <- msu_bluegrey <- msu_bluegray <- "#909ab7"

#' MSU dark grey hex colour
#' @export
msu_darkgrey <- msu_darkgray <- "#535054"

#' MSU yellow (aka yellow-green or grellow) hex colour
#' @export
msu_yellow <- msu_yellowgreen <- msu_grellow <- "#d1de3f"

#' MSU peach hex colour
#' @export
msu_peach <- "#e8d9b5"

#' MSU (burnt) orange hex colour
#' @export
msu_orange <- msu_burnt <- "#c89a58"

#' MSU split pea hex colour
#' @export
msu_splitpea <- "#94ae4a"

#' MSU purple hex colour
#' @export
msu_purple <- "#6e005f"

#' MSU red hex colour
#' @export
msu_red <- "#cb5a28"

## Big Ten Institution Colors

#' Indiana University primary color
#' @export
bigten_indiana_primary <- "#990000"

#' Indiana University secondary color
#' @export
bigten_indiana_secondary <- "#edebeb"

#' Michigan State University primary color
#' @export
bigten_msu_primary <- "#18453b"

#' Michigan State University secondary color
#' @export
bigten_msu_secondary <- "#ffffff"

#' Northwestern University primary color
#' @export
bigten_northwestern_primary <- "#4e2a84"

#' Northwestern University secondary color
#' @export
bigten_northwestern_secondary <- "#e4e0ee"

#' Ohio State University primary color
#' @export
bigten_ohiostate_primary <- "#bb0000"

#' Ohio State University secondary color
#' @export
bigten_ohiostate_secondary <- "#666666"

#' Penn State University primary color
#' @export
bigten_pennstate_primary <- "#001e44"

#' Penn State University secondary color
#' @export
bigten_pennstate_secondary <- "#ffffff"

#' Purdue University primary color
#' @export
bigten_purdue_primary <- "#cfb991"

#' Purdue University secondary color
#' @export
bigten_purdue_secondary <- "#000000"

#' Rutgers University primary color
#' @export
bigten_rutgers_primary <- "#cc0033"

#' Rutgers University secondary color
#' @export
bigten_rutgers_secondary <- "#525c5c"

#' UCLA primary color
#' @export
bigten_ucla_primary <- "#2774ae"

#' UCLA secondary color
#' @export
bigten_ucla_secondary <- "#ffd100"

#' University of Illinois primary color
#' @export
bigten_illinois_primary <- "#ff552e"

#' University of Illinois secondary color
#' @export
bigten_illinois_secondary <- "#13294b"

#' University of Iowa primary color
#' @export
bigten_iowa_primary <- "#ffcd00"

#' University of Iowa secondary color
#' @export
bigten_iowa_secondary <- "#000000"

#' University of Maryland primary color
#' @export
bigten_maryland_primary <- "#f0163a"

#' University of Maryland secondary color
#' @export
bigten_maryland_secondary <- "#ffd90f"

#' University of Michigan primary color
#' @export
bigten_michigan_primary <- "#ffcb05"

#' University of Michigan secondary color
#' @export
bigten_michigan_secondary <- "#00274c"

#' University of Minnesota primary color
#' @export
bigten_minnesota_primary <- "#ffcc33"

#' University of Minnesota secondary color
#' @export
bigten_minnesota_secondary <- "#7a0019"

#' University of Nebraska primary color
#' @export
bigten_nebraska_primary <- "#d00000"

#' University of Nebraska secondary color
#' @export
bigten_nebraska_secondary <- "#f5f1e7"

#' University of Oregon primary color
#' @export
bigten_oregon_primary <- "#007030"

#' University of Oregon secondary color
#' @export
bigten_oregon_secondary <- "#FEE11A"

#' University of Southern California primary color
#' @export
bigten_usc_primary <- "#990000"

#' University of Southern California secondary color
#' @export
bigten_usc_secondary <- "#ffcc00"

#' University of Washington primary color
#' @export
bigten_washington_primary <- "#4b2e83"

#' University of Washington secondary color
#' @export
bigten_washington_secondary <- "#e8e3d3"

#' University of Wisconsin primary color
#' @export
bigten_wisconsin_primary <- "#da004c"

#' University of Wisconsin secondary color
#' @export
bigten_wisconsin_secondary <- "#ffffff"

#' Named vector of Big Ten primary colors for reliable institution matching
#' @export
bigten_colors_primary <- c(
  "Indiana" = "#990000",
  "MSU" = "#18453b",
  "Northwestern" = "#4e2a84",
  "Ohio State" = "#bb0000",
  "Penn State" = "#001e44",
  "Purdue" = "#cfb991",
  "Rutgers" = "#cc0033",
  "UCLA" = "#2774ae",
  "Illinois" = "#ff552e",
  "Iowa" = "#ffcd00",
  "Maryland" = "#f0163a",
  "Michigan" = "#ffcb05",
  "Minnesota" = "#ffcc33",
  "Nebraska" = "#d00000",
  "Oregon" = "#007030",
  "USoCal" = "#990000",
  "Washington" = "#4b2e83",
  "Wisconsin" = "#da004c"
)

#' Named vector of Big Ten secondary colors for reliable institution matching
#' @export
bigten_colors_secondary <- c(
  "Indiana" = "#edebeb",
  "MSU" = "#ffffff",
  "Northwestern" = "#e4e0ee",
  "Ohio State" = "#666666",
  "Penn State" = "#ffffff",
  "Purdue" = "#000000",
  "Rutgers" = "#525c5c",
  "UCLA" = "#ffd100",
  "Illinois" = "#13294b",
  "Iowa" = "#000000",
  "Maryland" = "#ffd90f",
  "Michigan" = "#00274c",
  "Minnesota" = "#7a0019",
  "Nebraska" = "#f5f1e7",
  "Oregon" = "#fee11a",
  "USoCal" = "#ffcc00",
  "Washington" = "#e8e3d3",
  "Wisconsin" = "#ffffff"
)
