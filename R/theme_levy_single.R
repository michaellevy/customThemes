#' theme_levy_single
#'
#' @param base_size 12 by default
#' @param font "Source Sans Pro" by default. \code{extrafont::fonttable()[["FamilyName"]]} to see what's available
#'
#' @return ggplot theme
#' @export
#' @import ggplot2
#' @importFrom extrafont fonttable
#'
theme_levy_single <- function(base_size = 12, font = "Source Sans Pro") {

  if(!font %in% extrafont::fonttable()[["FamilyName"]]) {
    warning("Font: \"", font, "\" not found. Using default sans instead.")
    font = "sans"
  }

  theme_levy(base_size = base_size, font = font) %+replace%
    theme(
      axis.line = element_line(size = .2),
      panel.border = element_blank()
    )
}

