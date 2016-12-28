#' Create fake jobs
#'
#' @export
#' @template params
#' @examples
#' ch_job()
#' ch_job(10)
#' ch_job(500)
ch_job <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    JobProvider$new()$render()
  } else {
    x <- JobProvider$new()
    replicate(n, x$render())
  }
}
