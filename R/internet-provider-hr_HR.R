# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/internet/hr_HR/__init__.py

int_free_email_domains_hr_hr <- c(
  "gmail.com", "hotmail.com", "yahoo.com",
  "net.hr", "zg.t-com.hr", "inet.hr", "t.ht.hr", "vip.hr",
  "globalnet.hr", "xnet.hr", "yahoo.hr", "zagreb.hr"
)

int_tlds_hr_hr <- c("hr", "com", "com.hr", "info", "org", "net", "biz")

int_replacements_hr_hr <- list(
  c("\u010d", "c"),
  c("\u010c", "C"),
  c("\u0107", "c"),
  c("\u0106", "C"),
  c("\u0111", "dj"),
  c("\u0110", "Dj"),
  c("\u0161", "s"),
  c("\u0160", "S"),
  c("\u017e", "z"),
  c("\u017d", "Z")
)

#' Internet provider for
#'
#' methods for internet related data, like email addresses,
#' usernames, and websites.
#' @family hr
#' @family HR
#' @export
#' @examples
#' x <- InternetProvider_hr_HR$new()
#' x$email()
#' x$free_email()
#' x$mac_address()
#' x$company_email()
InternetProvider_hr_HR <- R6::R6Class(
  inherit = InternetProvider,
  "InternetProvider_hr_HR",
  private = list(
    locale_ = "hr_HR",
    free_email_domains = int_free_email_domains_hr_hr,
    tlds = int_tlds_hr_hr,
    replacements = int_replacements_hr_hr
  )
)
