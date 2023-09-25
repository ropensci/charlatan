
phone_number_formats_nl_be <- c(
  "0### ######",
  "0## #######",
  "+32### ######",
  "+32## #######",
  "+32(0)### ######",
  "+32(0)## #######",
  "(0###) ######",
  "(0##) #######",
  "0###-######",
  "0##-#######",
  "+32###-######",
  "+32##-#######",
  "+32(0)###-######",
  "+32(0)##-#######",
  "(0###)-######",
  "(0##)-#######"
)

phone_number_formats_nl_nl <- c(
  "0### ######",
  "0## #######",
  "+31### ######",
  "+31## #######",
  "+31(0)### ######",
  "+31(0)## #######",
  "(0###) ######",
  "(0##) #######",
  "0###-######",
  "0##-#######",
  "+31###-######",
  "+31##-#######",
  "+31(0)###-######",
  "+31(0)##-#######",
  "(0###)-######",
  "(0##)-#######"
)


#' @title PhoneNumberProvider for Belgium
#' @description methods for generating phone numbers
#' @family nl
#' @family BE
#' @export
#' @examples
#' z <- PhoneNumberProvider_nl_BE$new()
#' z$render()
PhoneNumberProvider_nl_BE <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_nl_BE",
  private = list(
    locale_ = "nl_BE",
    formats = phone_number_formats_nl_be
  )
)
#' @title PhoneNumberProvider for the Netherlands
#' @description methods for generating phone numbers
#' @family nl
#' @family NL
#' @export
#' @examples
#' z <- PhoneNumberProvider_nl_NL$new()
#' z$render()
PhoneNumberProvider_nl_NL <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_nl_NL",
  private = list(
    locale_ = "nl_NL",
    formats = phone_number_formats_nl_nl
  )
)
