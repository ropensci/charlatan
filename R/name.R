#' Create fake person names
#'
#' @export
#' @template params
#' @examples
#' ch_name()
#' ch_name(10)
#' ch_name(500)
ch_name <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    PersonProvider$new()$render()
  } else {
    x <- PersonProvider$new()
    replicate(n, x$render())
  }
}
