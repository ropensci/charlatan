#' Create fake phone numbers
#'
#' @export
#' @examples
#' ch_phone_number()
#' replicate(10, ch_phone_number())
#' replicate(500, ch_phone_number())
ch_phone_number <- function() {
  PhoneNumberProvider$new()$render()
}
