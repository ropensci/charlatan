#' Create fake phone numbers
#'
#' @export
#' @template params
#' @param locale (character) the locale to use. See
#' `PhoneNumberProvider$new()$allowed_locales()` for locales
#' supported (default: en_US)
#' @seealso [PhoneNumberProvider]
#' @examples
#' ch_phone_number()
#' ch_phone_number(10)
#' # or even ch_phone_number(500)
#'
#' # locales
#' ch_phone_number(locale = "fr_FR")
#' ch_phone_number(locale = "uk_UA")
#' ch_phone_number(locale = "en_CA")
#' ch_phone_number(locale = "lv_LV")
ch_phone_number <- function(n = 1, locale = NULL) {
  assert(n, c("integer", "numeric"))
  if (is.null(locale)) {
    locale <- "en_US"
  }
  pn <- cr_loc_spec_provider("PhoneNumberProvider", locale)
  if (n == 1) {
    pn$render()
  } else {
    replicate(n, pn$render())
  }
}
