#' Create fake phone numbers
#'
#' @export
#' @template params
#' @examples
#' ch_phone_number()
#' ch_phone_number(10)
#' ch_phone_number(500)
ch_phone_number <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    PhoneNumberProvider$new()$render()
  } else {
    x <- PhoneNumberProvider$new()
    replicate(n, x$render())
  }
}
