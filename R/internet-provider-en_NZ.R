# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/internet/en_NZ/__init__.py

int_free_email_domains_en_nz <- c(
  "gmail.com",
  "yahoo.com",
  "hotmail.com",
  "inspire.net.nz",
  "xtra.co.nz"
)

int_tlds_en_nz <- c(
  "nz",
  "co.nz",
  "org.nz",
  "kiwi",
  "kiwi.nz",
  "geek.nz",
  "net.nz",
  "school.nz",
  "ac.nz",
  "maori.nz"
)

#' Internet provider for New-Zealand
#'
#' methods for internet related data, like email addresses,
#' usernames, and websites.
#' @family bg
#' @family BG
#' @export
#' @examples
#' x <- InternetProvider_en_NZ$new()
#' x$email()
#' x$free_email()
#' x$mac_address()
#' x$company_email()
InternetProvider_en_NZ <- R6::R6Class(
  inherit = InternetProvider,
  "InternetProvider_en_NZ",
  private = list(
    locale_ = "en_NZ",
    free_email_domains = int_free_email_domains_en_nz,
    tlds = int_tlds_en_nz
  )
)
