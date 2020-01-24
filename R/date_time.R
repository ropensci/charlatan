#' Create dates and times
#'
#' @name date_time
#' @export
#' @template params
#' @seealso [DateTimeProvider]
#' @examples
#' ch_timezone()
#' ch_timezone(10)
#'
#' ch_unix_time()
#' ch_unix_time(20)
#'
#' ch_date_time()
#' ch_date_time(20)
ch_timezone <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    DateTimeProvider$new()$timezone()
  } else {
    x <- DateTimeProvider$new()
    replicate(n, x$timezone())
  }
}

#' @export
#' @rdname date_time
ch_unix_time <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    DateTimeProvider$new()$unix_time()
  } else {
    x <- DateTimeProvider$new()
    replicate(n, x$unix_time())
  }
}

#' @export
#' @rdname date_time
ch_date_time <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    DateTimeProvider$new()$date_time()
  } else {
    x <- DateTimeProvider$new()
    replicate(n, x$date_time(), simplify = FALSE)
  }
}

