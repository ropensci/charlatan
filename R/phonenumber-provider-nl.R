
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
  public = list(
    #' @field locale (character) the locale
    locale = "nl_BE",
    #' @field formats phone number formats
    formats = phone_number_formats_nl_be
  )
)
#' @title PhoneNumberProvider for the Netherlands
#' @description methods for generating phone numbers
#' @family nl
#' @family NL
#' @export
#' @examples
#' z <- PhoneNumberProvider_nl_NLU$new()
#' z$render()
PhoneNumberProvider_nl_NL <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_nl_NL",
  public = list(
    #' @field locale (character) the locale
    locale = "nl_NL",
    #' @field formats phone number formats
    formats = phone_number_formats_nl_nl
  )
)
