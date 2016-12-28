#' Create fake currencies
#'
#' @export
#' @template params
#' @examples
#' ch_currency()
#' ch_currency(10)
#' ch_currency(500)
ch_currency <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    CurrencyProvider$new()$render()
  } else {
    x <- CurrencyProvider$new()
    replicate(n, x$render())
  }
}
