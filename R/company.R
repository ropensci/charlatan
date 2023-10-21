#' Create fake company names and other company bits
#'
#' @export
#' @template params
#' @param locale (character) the locale to use. See
#' `company()$allowed_locales()` for locales supported.
#' @seealso [CompanyProvider]
#' @examples
#' ch_company()
#' ch_company(10)
#' # or even ch_company(500)
#'
#' ch_company(locale = "fr_FR", n = 10)
#' ch_company(locale = "cs_CZ", n = 10)
#' ch_company(locale = "es_MX", n = 10)
#' ch_company(locale = "hr_HR", n = 10)
ch_company <- function(n = 1, locale = NULL) {
  assert(n, c("integer", "numeric"))
  # temp workaround
  if (is.null(locale)) {
    locale <- "en_US"
  }
  x <- subclass(provider = "CompanyProvider", locale = locale)
  if (n == 1) {
    x$company()
  } else {
    replicate(n, x$company())
  }
}
