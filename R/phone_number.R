#' Create fake phone numbers
#'
#' @export
#' @examples
#' ch_phone_number()
#' ch_phone_numbers(10)
#' ch_phone_numbers(500)
ch_phone_number <- function() {
  PhoneNumberProvider$new()$render()
}

#' @export
#' @rdname ch_phone_number
ch_phone_numbers <- function(n = 10) {
  x <- PhoneNumberProvider$new()
  replicate(n, x$render())
}
