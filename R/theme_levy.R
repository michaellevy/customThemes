#' theme_levy
#'
#' @param base_size 13 by default
#' @param font "Source Sans Pro" by default. \code{extrafont::fonttable()[["FamilyName"]]} to see what's available
#'
#' @return ggplot theme
#' @export
#' @import ggplot2
#' @importFrom extrafont fonttable
#'
theme_levy <- function(base_size = 13, font = "Source Sans Pro") {

  if(!font %in% extrafont::fonttable()[["FamilyName"]]) {
    warning("Font: \"", font, "\" not found. Using default sans instead.")
    font = "sans"
  }

  theme_bw(base_size = base_size, base_family = font) %+replace%
    theme(
      panel.grid = element_blank(),
      axis.line = element_line(),
      panel.border = element_blank(),
      strip.background = element_blank(),
      strip.text = element_text(size = base_size, face = "bold")
    )
}

