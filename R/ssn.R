#' Create fake Social Security Numbers
#'
#' @export
#' @template params
#' @param locale (character) the locale to use. See
#' `SSNProvider$new()$allowed_locales()` for locales
#' supported (default: en_US)
#' @seealso [SSNProvider]
#' @examples
#' ch_ssn()
#' ch_ssn(10)
ch_ssn <- function(n = 1, locale = NULL) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    SSNProvider$new(locale = locale)$render()
  } else {
    x <- SSNProvider$new(locale = locale)
    replicate(n, x$render())
  }
}
