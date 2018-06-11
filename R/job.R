#' Create fake jobs
#'
#' @export
#' @template params
#' @param locale (character) the locale to use. Run 
#' `job_provider_locales()` for locales supported (default: en_US)
#' @examples
#' ch_job()
#' ch_job(10)
#' ch_job(500)
#'
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
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    JobProvider$new(locale = locale)$render()
  } else {
    x <- JobProvider$new(locale = locale)
    replicate(n, x$render())
  }
}
