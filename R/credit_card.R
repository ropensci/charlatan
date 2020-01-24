#' Create fake credit card data
#'
#' @export
#' @name ch_credit
#' @template params
#' @seealso [CreditCardProvider]
#' @examples
#' ch_credit_card_provider()
#' ch_credit_card_provider(n = 4)
#'
#' ch_credit_card_number()
#' ch_credit_card_number(n = 10)
#' ch_credit_card_number(n = 500)
#'
#' ch_credit_card_security_code()
#' ch_credit_card_security_code(n = 10)
#' ch_credit_card_security_code(n = 500)
ch_credit_card_provider <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    CreditCardProvider$new()$credit_card_provider()
  } else {
    x <- CreditCardProvider$new()
    replicate(n, x$credit_card_provider())
  }
}

#' @export
#' @rdname ch_credit
ch_credit_card_number <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    CreditCardProvider$new()$credit_card_number()
  } else {
    x <- CreditCardProvider$new()
    replicate(n, x$credit_card_number())
  }
}

#' @export
#' @rdname ch_credit
ch_credit_card_security_code <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    CreditCardProvider$new()$credit_card_security_code()
  } else {
    x <- CreditCardProvider$new()
    replicate(n, x$credit_card_security_code())
  }
}
