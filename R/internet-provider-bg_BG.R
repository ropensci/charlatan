# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/internet/bg_BG/__init__.py

int_user_name_formats_bg_bg <- c(
  "{{last_name_female}}.{{first_name_female}}",
  "{{last_name_male}}.{{first_name_male}}",
  "{{last_name_male}}.{{first_name_male}}",
  "{{first_name_male}}.{{last_name_male}}",
  "{{first_name}}##",
  "?{{last_name}}",
  "{{first_name}}{{year}}"
)

int_email_formats_bg_bg <- c(
  "{{user_name}}@{{free_email_domain}}",
  "{{user_name}}@{{domain_name}}"
)

int_free_email_domains_bg_bg <- c(
  "gmail.com", "yahoo.com", "hotmail.com", "mail.bg", "abv.bg", "dir.bg"
)

int_tlds_bg_bg <- c("bg", "com", "biz", "info", "net", "org", "edu")

int_replacements_bg_bg <- list(
  c("\u0411", "b"),
  c("\u0413", "r"),
  c("\u0414", "d"),
  c("\u0416", "zh"),
  c("\u0417", "z"),
  c("\u0418", "i"),
  c("\u0419", "i"),
  c("\u041b", "l"),
  c("\u041f", "p"),
  c("\u0424", "f"),
  c("\u0426", "ts"),
  c("\u0427", "ch"),
  c("\u0428", "sh"),
  c("\u0429", "sht"),
  c("\u042a", "u"),
  c("\u042c", ""),
  c("\u042e", "yu"),
  c("\u042f", "ya"),
  c("\u0431", "b"),
  c("\u0432", "v"),
  c("\u0434", "d"),
  c("\u0436", "zh"),
  c("\u0437", "z"),
  c("\u0438", "i"),
  c("\u0439", "i"),
  c("\u043a", "k"),
  c("\u043b", "l"),
  c("\u043c", "m"),
  c("\u043d", "n"),
  c("\u043f", "p"),
  c("\u0442", "t"),
  c("\u0444", "f"),
  c("\u0446", "ts"),
  c("\u0447", "ch"),
  c("\u0448", "sh"),
  c("\u0449", "sht"),
  c("\u044a", "u"),
  c("\u044c", ""),
  c("\u044e", "yu"),
  c("\u044f", "ya"),
  c("\u0411", "b"),
  c("\u0413", "r"),
  c("\u0414", "d"),
  c("\u0416", "zh"),
  c("\u0417", "z"),
  c("\u0418", "i"),
  c("\u0419", "i"),
  c("\u041b", "l"),
  c("\u041f", "p"),
  c("\u0424", "f"),
  c("\u0426", "ts"),
  c("\u0427", "ch"),
  c("\u0428", "sh"),
  c("\u0429", "sht"),
  c("\u042a", "u"),
  c("\u042c", ""),
  c("\u042e", "yu"),
  c("\u042f", "ya"),
  c("\u0431", "b"),
  c("\u0432", "v"),
  c("\u0434", "d"),
  c("\u0436", "zh"),
  c("\u0437", "z"),
  c("\u0438", "i"),
  c("\u0439", "i"),
  c("\u043a", "k"),
  c("\u043b", "l"),
  c("\u043c", "m"),
  c("\u043d", "n"),
  c("\u043f", "p"),
  c("\u0442", "t"),
  c("\u0444", "f"),
  c("\u0446", "ts"),
  c("\u0447", "ch"),
  c("\u0448", "sh"),
  c("\u0449", "sht"),
  c("\u044a", "u"),
  c("\u044c", ""),
  c("\u044e", "yu"),
  c("\u044f", "ya")
)

#' Internet provider
#'
#' methods for internet related data, like email addresses,
#' usernames, and websites.
#' @family bg
#' @family BG
#' @export
#' @examples
#' x <- InternetProvider_bg_BG$new()
#' x$email()
#' x$free_email()
#' x$mac_address()
#' x$company_email()
InternetProvider_bg_BG <- R6::R6Class(
  inherit = InternetProvider,
  "InternetProvider_bg_BG",
  public = list(
    #' @field locale (character) the locale
    locale = "bg_BG",
    #' @field free_email_domains (character) free email tlds
    free_email_domains = int_free_email_domains_bg_bg,
    #' @field tlds (character) tlds
    tlds = int_tlds_bg_bg,
    #' @field replacements (list) a list
    replacements = int_replacements_bg_bg,
    #' @field user_name_formats (character) user name formats
    user_name_formats = int_user_name_formats_bg_bg,
    #' @field email_formats (character) email formats
    email_formats = int_email_formats_bg_bg
  )
)
