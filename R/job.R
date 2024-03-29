#' Create fake jobs
#'
#' @export
#' @template params
#' @param locale (character) the locale to use. Run
#' `JobProvider$new()$allowed_locales()` for locales supported
#' (default: en_US)
#' @seealso [JobProvider]
#' @examples
#' ch_job()
#' ch_job(10)
#' # or even ch_job(500)
#'
#' ch_job(locale = "da_DK", n = 10)
#' ch_job(locale = "fi_FI", n = 10)
#' ch_job(locale = "fr_FR", n = 10)
#' ch_job(locale = "fr_CH", n = 10)
#' ch_job(locale = "hr_HR", n = 10)
#' ch_job(locale = "fa_IR", n = 10)
#' ch_job(locale = "pl_PL", n = 10)
#' ch_job(locale = "ru_RU", n = 10)
#' ch_job(locale = "uk_UA", n = 10)
#' ch_job(locale = "zh_TW", n = 10)
ch_job <- function(n = 1, locale = NULL) {
  assert(n, c("integer", "numeric"))
  if (is.null(locale)) {
    locale <- "en_US"
  }
  jj <- cr_loc_spec_provider("JobProvider", locale)
  if (n == 1) {
    jj$render()
  } else {
    replicate(n, jj$render())
  }
}
