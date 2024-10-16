# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/internet/en_AU/__init__.py

int_free_email_domains_en_au <- c(
  "gmail.com",
  "yahoo.com",
  "hotmail.com",
  "yahoo.com.au",
  "hotmail.com.au"
)

int_tlds_en_au <- c(
  "com", "com.au", "org", "org.au", "net",
  "net.au", "biz", "info", "edu", "edu.au"
)

#' Internet provider English (Australia)
#'
#' methods for internet related data, like email addresses,
#' usernames, and websites.
#' @family en
#' @family AU
#' @export
#' @examples
#' x <- InternetProvider_en_AU$new()
#' x$mac_address()
InternetProvider_en_AU <- R6::R6Class(
  inherit = InternetProvider,
  "InternetProvider_en_AU",
  private = list(
    locale_ = "en_AU",
    free_email_domains = int_free_email_domains_en_au,
    tlds = int_tlds_en_au
  )
)
