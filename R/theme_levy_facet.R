#' theme_levy_facet
#'
#' @param base_size 12 by default
#' @param font "Source Sans Pro" by default. \code{extrafont::fonttable()[["FamilyName"]]} to see what's available
#'
#' @return ggplot theme
#' @export
#' @import ggplot2
#'
#' @details
#'
#' @examples
#' \dontrun{
#' ggplot(data.frame(x = 1:10, y = rnorm(10), z = sample(letters[1:2])),
#'   aes(x, y)) +
#'   geom_point() +
#'   facet_wrap(~ z) +
#'   theme_levy_facet()
#' }
theme_levy_facet <- function(base_size = 12, font = "Source Sans Pro") {

  theme_levy(base_size = base_size, font = font) %+replace%
    theme(
      axis.line = element_blank(),
      panel.border = element_rect(size = .3, fill = NA)
    )

}

