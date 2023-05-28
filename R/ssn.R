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
  assert(n, c("integer", "numeric"))
  if (is.null(locale)) {
    locale <- "en_US"
  }
  x <- cr_loc_spec_provider("SSNProvider", locale)
  if (n == 1) {
    x$render()
  } else {
    replicate(n, x$render())
  }
}
