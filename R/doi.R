#' Create fake DOIs (Digital Object Identifiers)
#'
#' @export
#' @template params
#' @examples
#' ch_doi()
#' ch_doi(10)
#' ch_doi(100)
ch_doi <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    DOIProvider$new()$render()
  } else {
    x <- DOIProvider$new()
    replicate(n, x$render())
  }
}
