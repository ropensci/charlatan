#' Create missing data
#'
#' @export
#' @template params
#' @examples
#' ch_missing(letters)
#' ch_missing(letters, 10)
#' ch_missing(letters, 20)
ch_missing <- function(x, n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    MissingDataProvider$new()$make_missing(x)
  } else {
    mdp <- MissingDataProvider$new()
    replicate(n, mdp$make_missing(x))
  }
}
