#' Create fake jobs
#'
#' @export
#' @template params
#' @param locale (character) the locale to use. only options right now are
#' en_US, fr_FR, hr_FR, more coming. default: en_US
#' @examples
#' ch_job()
#' ch_job(10)
#' ch_job(500)
#'
#' ch_job(locale = "fr_FR", n = 10)
#' ch_job(locale = "hr_HR", n = 10)
ch_job <- function(n = 1, locale = NULL) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    JobProvider$new(locale = locale)$render()
  } else {
    x <- JobProvider$new(locale = locale)
    replicate(n, x$render())
  }
}
