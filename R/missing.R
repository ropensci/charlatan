#' Create missing data
#'
#' @export
#' @param x Input vector, can be any class - only 1 vetor
#' @template params
#' @seealso [MissingDataProvider]
#' @examples
#' ch_missing(letters)
#' ch_missing(letters, 10)
#' ch_missing(letters, 20)
ch_missing <- function(x, n = 1) {
  assert(n, c("integer", "numeric"))
  mdp <- MissingDataProvider$new()
  if (n == 1) {
    mdp$make_missing(x)
  } else {
    replicate(n, mdp$make_missing(x))
  }
}
