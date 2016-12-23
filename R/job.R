#' Create fake jobs
#'
#' @export
#' @template params
#' @examples
#' ch_job()
#' ch_jobs(10)
#' ch_jobs(500)
ch_job <- function() {
  JobProvider$new()$render()
}

#' @export
#' @rdname ch_job
ch_jobs <- function(n = 10) {
  x <- JobProvider$new()
  replicate(n, x$render())
}
