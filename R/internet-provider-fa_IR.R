# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/internet/fa_IR/__init__.py

int_safe_email_tlds_fa_ir <- c("com", "net", "ir", "org")
int_free_email_domains_fa_ir <- c(
  "chmail.ir", "mailfa.com",
  "gmail.com", "hotmail.com", "yahoo.com"
)
int_tlds_fa_ir <- c("com", "com", "com", "net", "org", "ir", "ir", "ir")

#' Internet provider for Iran
#'
#' methods for internet related data, like email addresses,
#' usernames, and websites.
#' @family fa
#' @family IR
#' @export
#' @examples
#' x <- InternetProvider_bg_BG$new()
#' x$email()
#' x$free_email()
#' x$mac_address()
#' x$company_email()
InternetProvider_fa_IR <- R6::R6Class(
  inherit = InternetProvider,
  "InternetProvider_fa_IR",
  private = list(
    locale_ = "fa_IR",
    free_email_domains = int_free_email_domains_fa_ir,
    tlds = int_tlds_fa_ir,
    safe_email_tlds = int_safe_email_tlds_fa_ir
  )
)
