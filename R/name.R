#' Create fake person names
#'
#' @export
#' @template params
#' @param locale (character) the locale to use. options: en_US (default),
#' fr_FR, fr_CH, hr_FR, fa_IR, pl_PL, ru_RU, uk_UA, zh_TW.
#' @examples
#' ch_name()
#' ch_name(10)
#' ch_name(500)
#'
#' ch_name(locale = "fr_FR", n = 10)
#' ch_name(locale = "fr_CH", n = 10)
#' ch_name(locale = "fa_IR", n = 10)
#' ch_name(locale = "fi_FI", n = 10)
ch_name <- function(n = 1, locale = NULL) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    PersonProvider$new(locale = locale)$render()
  } else {
    x <- PersonProvider$new(locale = locale)
    replicate(n, x$render())
  }
}
