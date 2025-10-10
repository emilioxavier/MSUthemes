.onLoad <- function(libname, pkgname) {
  # Check if Metropolis is installed as a system font
  system_fonts <- systemfonts::system_fonts()
  metropolis_installed <- any(grepl("Metropolis", system_fonts$family, ignore.case = TRUE))

  if (!metropolis_installed) {
    # Metropolis not found as system font, register the bundled fonts via showtext
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

    ## set DPI based on OS ----
    ## Windows & Linux ==>> 96 dpi
    ## macOS (aka Darwin) ==>> 72 dpi
    dpi <- if (Sys.info()["sysname"] == "Darwin") 72 else 96
    showtext::showtext_opts(dpi = dpi)

    # Only enable showtext when using bundled fonts
    # This avoids dimension issues when Metropolis is installed as system font
    showtext::showtext_auto()
  }
  # If Metropolis is installed as system font, R will use it directly
}

.onAttach <- function(libname, pkgname) {

  if (interactive()) {
    packageStartupMessage(MSUthemes_WelcomeMessage())
  }
}


MSUthemes_WelcomeMessage <- function() {

  message(
    "\n",
    " <(^_^)> Welcome to MSUthemes! d[-_-]b\n")

  ## check if Metropolis font is installed
  system_fonts <- systemfonts::system_fonts()
  metropolis_installed <- any(grepl("Metropolis", system_fonts$family, ignore.case = TRUE))
  if (!metropolis_installed) {
    os.type <- Sys.info()["sysname"]
    metropolis.font <- system.file("fonts/metropolis_5.1.0", package="MSUthemes")
    message("\n [*_*] The Metropolis font is NOT installed as a system font!\n   -->> How to install Metropolis as a system font:")
    # message(" - Locate the font files: In R, run:\n   system.file('fonts/metropolis_5.1.0', package='MSUthemes')\n")
    if ( os.type == "Darwin" ) {
      message(paste0("    - Open Finder and navigate to ", metropolis.font, "\n",
                     "    - Select all .ttf files\n",
                     "    - Double-click any selected font file and click the 'Install' button in Font Book"))
    }
    if ( os.type == "Linux" ) {
      message(paste0("    - Copy the .ttf files to ~/.fonts/ (create the directory if it doesn't exist):\n",
                     "      mkdir -p ~/.fonts\n",
                     "      cp ", metropolis.font, "/*.ttf ~/.fonts/\n",
                     "      fc-cache -fv"))
    }
    if ( os.type == "Windows" ) {
      message(paste0("    - Open File Explorer and navigate to ", metropolis.font, "\n",
                     "    - Select all .ttf files\n",
                     "    - Right-click and select 'Install' (or 'Install for all users' if available)"))
    }
    message("    - Restart R/RStudio/VS Code")
  } else {
    message(" (O_O) The Metropolis font is installed as a system font!")
  }

  ## get version information
  ver.full <- utils::packageVersion("MSUthemes")
  ver.parts <- strsplit(as.character(ver.full), split=".", fixed=TRUE) |> unlist()
  ver.number <- ver.parts[1]
  ver.origin2now <- as.integer(ver.parts[2])
  origin.date <- as.POSIXct("1970-01-01 00:00:00", tz="UTC")
  build.date.UTC <- origin.date + ver.origin2now*60

  paste0(
    "\n",
    # " <(^_^)> Welcome to MSUthemes! d[-_-]b\n\n",
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

#' Check font availability and return appropriate font family
#'
#' @description Internal helper function to check if Metropolis font is available
#' (either as system font or via showtext) and return appropriate font family name.
#' Issues a one-time warning per session if Metropolis is not available.
#' In non-interactive contexts (like R CMD check), silently falls back without warning.
#'
#' @param requested_font Character string of requested font family. Default "Metropolis".
#' @param fallback_font Character string of fallback font family. Default "sans".
#' @param warn Logical, whether to warn if Metropolis is not available. Default TRUE.
#'
#' @return Character string of font family to use
#' @keywords internal
#' @noRd
check_font_available <- function(requested_font = "Metropolis",
                                   fallback_font = "sans",
                                   warn = TRUE) {

  # In R CMD check or other non-interactive contexts, use safe fallback
  # System fonts may not work correctly with all graphics devices
  if (!interactive()) {
    return(fallback_font)
  }

  # Check if Metropolis is available as system font
  system_fonts <- systemfonts::system_fonts()
  metropolis_system <- any(grepl("Metropolis", system_fonts$family, ignore.case = TRUE))

  # Check if Metropolis is registered with showtext/sysfonts
  showtext_fonts <- try(sysfonts::font_families(), silent = TRUE)
  metropolis_showtext <- if (!inherits(showtext_fonts, "try-error")) {
    "Metropolis" %in% showtext_fonts
  } else {
    FALSE
  }

  # Metropolis is available if it's either a system font or registered with showtext
  metropolis_available <- metropolis_system || metropolis_showtext

  if (metropolis_available) {
    return(requested_font)
  } else {
    # Warn once per session
    if (warn && !exists("font_warning_shown", envir = .MSUthemes_env)) {
      warning(
        "Metropolis font is not available. Using '", fallback_font, "' instead.\n",
        "  For best results, install Metropolis as a system font.\n",
        "  See installation instructions: library(MSUthemes)",
        call. = FALSE
      )
      assign("font_warning_shown", TRUE, envir = .MSUthemes_env)
    }
    return(fallback_font)
  }
}

# Package environment to track warnings
.MSUthemes_env <- new.env(parent = emptyenv())

