#' Create fake company names and other company bits
#'
#' @export
#' @template params
#' @param locale (character) the locale to use. See
#' `CompanyProvider$new()$allowed_locales()` for locales supported.
#' @seealso [CompanyProvider]
#' @examples
#' ch_company()
#' ch_company(10)
#' ch_company(500)
#'
#' ch_company(locale = "fr_FR", n = 10)
#' ch_company(locale = "cs_CZ", n = 10)
#' ch_company(locale = "es_MX", n = 10)
#' ch_company(locale = "hr_HR", n = 10)
ch_company <- function(n = 1, locale = NULL) {
  assert(n, c("integer", "numeric"))
  if (n == 1) {
    CompanyProvider$new(locale = locale)$company()
  } else {
    x <- CompanyProvider$new(locale = locale)
    replicate(n, x$company())
  }
}
