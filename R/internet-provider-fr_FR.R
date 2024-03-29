# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/internet/fr_FR/__init__.py

int_safe_email_tlds_fr_fr <- c("com", "net", "fr", "fr")

int_free_email_domains_fr_fr <- c(
  "voila.fr",
  "gmail.com",
  "hotmail.fr",
  "yahoo.fr",
  "laposte.net",
  "free.fr",
  "sfr.fr",
  "orange.fr",
  "bouygtel.fr",
  "club-internet.fr",
  "dbmail.com",
  "live.com",
  "ifrance.com",
  "noos.fr",
  "tele2.fr",
  "tiscali.fr",
  "wanadoo.fr"
)

int_tlds_fr_fr <- c("com", "com", "com", "net", "org", "fr", "fr", "fr")

int_replacements_fr_fr <- list(
  c("\u00e0", "a"),
  c("\u00e2", "a"),
  c("\u00e4", "a"),
  c("\u00e7", "c"),
  c("\u00e9", "e"),
  c("\u00e8", "e"),
  c("\u00ea", "e"),
  c("\u00eb", "e"),
  c("\u00c9", "e"),
  c("\u00ef", "i"),
  c("\u00ee", "i"),
  c("\u00f4", "o"),
  c("\u00f6", "o"),
  c("\u00f9", "u"),
  c("\u00fc", "u")
)

#' Internet provider for France
#'
#' methods for internet related data, like email addresses,
#' usernames, and websites.
#' @family fr
#' @family FR
#' @export
#' @examples
#' x <- InternetProvider_bg_BG$new()
#' x$email()
#' x$free_email()
#' x$mac_address()
#' x$company_email()
InternetProvider_fr_FR <- R6::R6Class(
  inherit = InternetProvider,
  "InternetProvider_fr_FR",
  private = list(
    locale_ = "fr_FR",
    free_email_domains = int_free_email_domains_fr_fr,
    tlds = int_tlds_fr_fr,
    safe_email_tlds = int_safe_email_tlds_fr_fr,
    replacements = int_replacements_fr_fr
  )
)
