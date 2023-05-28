# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/internet/cs_CZ/__init__.py

int_user_name_formats_cs_cz <- c(
  "{{last_names_female}}.{{first_names_female}}",
  "{{last_names_female}}.{{first_names_female}}",
  "{{last_names_male}}.{{first_names_male}}",
  "{{last_names_male}}.{{first_names_male}}",
  "{{first_names_female}}.{{last_names_female}}",
  "{{first_names_male}}.{{last_names_male}}",
  "{{first_names}}##",
  "?{{last_names}}",
  "?{{last_names}}",
  "?{{last_names}}"
)

int_email_formats_cs_cz <- "{{user_name}}@{{free_email_domain}}"

int_free_email_domains_cs_cz <- c(
  "seznam.cz",
  "gmail.com",
  "email.cz",
  "post.cz",
  "chello.cz",
  "centrum.cz",
  "volny.cz"
)

int_tlds_cs_cz <- c("cz", "com", "cz")

#' Internet provider
#'
#' methods for internet related data, like email addresses,
#' usernames, and websites.
#' @family cs
#' @family CZ
#' @export
#' @examples
#' x <- InternetProvider_cs_CZ$new()
#' x$email()
#' x$free_email()
#' x$mac_address()
#' x$company_email()
InternetProvider_cs_CZ <- R6::R6Class(
  inherit = InternetProvider,
  "InternetProvider_cs_CZ",
  public = list(
    #' @field locale (character) the locale
    locale = "cs_CZ",
    #' @field free_email_domains (character) free email tlds
    free_email_domains = int_free_email_domains_cs_cz,
    #' @field tlds (character) tlds
    tlds = int_tlds_cs_cz,
    #' @field user_name_formats (character) user name formats
    user_name_formats = int_user_name_formats_cs_cz,
    #' @field email_formats (character) email formats
    email_formats = int_email_formats_cs_cz
  )
)
