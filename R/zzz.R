.onLoad <- function(libname, pkgname) {
  sysfonts::font_add(
    family = "Metropolis",
    # thin = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-100-normal.ttf", package = "MSUthemes"),
    # thinitalics = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-100-italic.ttf", package = "MSUthemes"),
    # extralight = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-200-normal.ttf", package = "MSUthemes"),
    # extralightitalics = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-200-italic.ttf", package = "MSUthemes"),
    # light = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-300-normal.ttf", package = "MSUthemes"),
    # lightitalics = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-300-italic.ttf", package = "MSUthemes"),
    regular = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-400-normal.ttf", package = "MSUthemes"),
    italic = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-400-italic.ttf", package = "MSUthemes"),
    # medium = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-500-normal.ttf", package = "MSUthemes"),
    # mediumitalic = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-500-italic.ttf", package = "MSUthemes"),
    # semibold = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-600-normal.ttf", package = "MSUthemes"),
    # semibolditalic = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-600-italic.ttf", package = "MSUthemes"),
    bold = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-700-normal.ttf", package = "MSUthemes"),
    bolditalic = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-700-italic.ttf", package = "MSUthemes")
    # extrabold = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-800-normal.ttf", package = "MSUthemes"),
    # extrabolditalic = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-800-italic.ttf", package = "MSUthemes"),
    # black = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-900-normal.ttf", package = "MSUthemes"),
    # blackitalic = system.file("fonts", "metropolis_5.1.0", "metropolis-latin-900-italic.ttf", package = "MSUthemes")
  )
  showtext::showtext_auto()
}

.onAttach <- function(libname, pkgname) {

  if (interactive()) {
    packageStartupMessage(MSUthemes_WelcomeMessage())
  }
}


MSUthemes_WelcomeMessage <- function() {

  ver.full <- utils::packageVersion("MSUthemes")
  ver.parts <- strsplit(as.character(ver.full), split=".", fixed=TRUE) |> unlist()
  ver.number <- ver.parts[1]
  ver.origin2now <- as.integer(ver.parts[2])
  origin.date <- as.POSIXct("1970-01-01 00:00:00", tz="UTC")
  build.date.UTC <- origin.date + ver.origin2now*60

  paste0(
    "\n",
    " <(^_^)> Welcome to MSUthemes! d[-_-]b\n\n",
    "  Current version: ", ver.full, "\n",
    "  Version ", ver.number, " Updated on ", format(build.date.UTC, format="%d/%b/%Y"), " @ ", format(build.date.UTC, format="%H:%M"), " UTC\n",
    "\n",
    "  Introduction: browseVignettes(package='MSUthemes')\n",
    "  How to cite: citation('MSUthemes')\n",
    "\n",
    "   ---->>> **Suggest. Request. Bug.** <<<----\n",
    "  Please submit your suggestions, requests, and bugs via:\n",
    "  https://GitHub.com/emilioxavier/MSUthemes/issues\n",
    "\n",
    "  >>> To suppress this message use: suppressPackageStartupMessages(library(MSUthemes))\n",
    "\n",
    " d[-_-]b Happy Data Visualisation! <(^_^)>\n"
  )
}

