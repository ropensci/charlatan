#' Create fake currencies
#'
#' @export
#' @template params
#' @examples
#' ch_currency()
#' ch_currencies(10)
#' ch_currencies(500)
ch_currency <- function() {
  CurrencyProvider$new()$render()
}

#' @export
#' @rdname ch_currency
ch_currencies <- function(n = 10) {
  x <- CurrencyProvider$new()
  replicate(n, x$render())
}
