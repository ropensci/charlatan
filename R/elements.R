#' Get elements
#'
#' @export
#' @name elements
#' @template params
#' @seealso [ElementProvider]
#' @examples
#' ch_element_symbol()
#' ch_element_symbol(10)
#' ch_element_symbol(50)
#'
#' ch_element_element()
#' ch_element_element(10)
#' ch_element_element(50)
ch_element_symbol <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    ElementProvider$new()$symbol()
  } else {
    x <- ElementProvider$new()
    replicate(n, x$symbol())
  }
}

#' @export
#' @rdname elements
ch_element_element <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    ElementProvider$new()$element()
  } else {
    x <- ElementProvider$new()
    replicate(n, x$element())
  }
}
