#' Create fake addresses
#'
#' @export
#' @template params
#' @param locale (character) the locale to use. See
#' `AddressProvider$new()$allowed_locales()` for locales supported.
#' @seealso [AddressProvider]
#' @examples
#' ch_street_address()
#' ch_street_address(n = 10)
#' ch_postcode()
#' ch_postcode(n = 10)
ch_street_address <- function(n = 1, locale = NULL) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    AddressProvider$new(locale = locale)$street_address()
  } else {
    x <- AddressProvider$new(locale = locale)
    replicate(n, x$street_address())
  }
}

ch_postcode <- function(n = 1, locale = NULL) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    AddressProvider$new(locale = locale)$postcode()
  } else {
    x <- AddressProvider$new(locale = locale)
    replicate(n, x$postcode())
  }
}