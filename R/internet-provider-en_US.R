#' Internet provider for United States
#'
#' methods for internet related data, like email addresses,
#' usernames, and websites.
#' @family en
#' @family US
#' @export
#' @examples
#' x <- InternetProvider_en_US$new()
#' x$email()
#' x$free_email()
#' x$mac_address()
#' x$company_email()
InternetProvider_en_US <- R6::R6Class(
  inherit = InternetProvider,
  "InternetProvider_en_US",
  public = list(
    #' @field locale (character) the locale
    locale = "en_US"
  )
)
