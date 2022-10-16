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

#' @describeIn {InternetProvider} {English (Australia)}
InternetProvider_en_AU <- R6::R6Class(
    inherit = InternetProvider,
    "InternetProvider_en_AU",
    public = list(
        locale = "en_AU",
        #' @field free_email_domains (character) free email tlds
        free_email_domains = int_free_email_domains_en_au,
        #' @field tlds (character) tlds
        tlds = int_tlds_en_au
    )
)
