#' Create fake person names
#'
#' @export
#' @template params
#' @param locale (character) the locale to use. See
#' `PersonProvider$new()$allowed_locales()` for locales supported
#' (default: en_US)
#' @param messy (logical) make some messy data. Default: `FALSE`
#' @seealso [PersonProvider]
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
