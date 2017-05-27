#' Create fake person names
#'
#' @export
#' @template params
#' @param locale (character) the locale to use. options: en_US (default),
#' fr_FR, fr_CH, fi_FI, fa_IR, es_ES, de_DE, de_AT, cs_CZ, bg_BG, dk_DK
#' @param messy (logical) make some messy data. Default: \code{FALSE}
#' @examples
#' ch_name()
#' ch_name(10)
#' ch_name(500)
#'
#' ch_name(locale = "fr_FR", n = 10)
#' ch_name(locale = "fr_CH", n = 10)
#' ch_name(locale = "fa_IR", n = 10)
#' ch_name(locale = "fi_FI", n = 10)
ch_name <- function(n = 1, locale = NULL, messy = FALSE) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    PersonProvider$new(locale = locale, messy = messy)$render()
  } else {
    x <- PersonProvider$new(locale = locale, messy = messy)
    replicate(n, x$render())
  }
}
