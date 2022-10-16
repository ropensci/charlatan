
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


#' @describeIn {PhoneNumberProviders} {Belgium Dutch}
PhoneNumberProvider_nl_BE <- R6::R6Class(
    inherit = PhoneNumberProvider,
    "PhoneNumberProvider_nl_BE",
    public = list(
        #' @field locale (character) the locale
        locale = "nl_BE",
        formats = phone_number_formats_nl_be
    ))
#' @describeIn {PhoneNumberProviders} {Netherlands Dutch}
PhoneNumberProvider_nl_NL <- R6::R6Class(
    inherit = PhoneNumberProvider,
    "PhoneNumberProvider_nl_NL",
    public = list(
        #' @field locale (character) the locale
        locale = "nl_NL",
        formats = phone_number_formats_nl_nl
    ))
