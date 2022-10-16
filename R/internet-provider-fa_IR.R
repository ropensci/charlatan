# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/internet/fa_IR/__init__.py

int_safe_email_tlds_fa_ir <- c("com", "net", "ir", "org")
int_free_email_domains_fa_ir <- c(
  "chmail.ir", "mailfa.com",
  "gmail.com", "hotmail.com", "yahoo.com"
)
int_tlds_fa_ir <- c("com", "com", "com", "net", "org", "ir", "ir", "ir")

#' @describeIn {InternetProvider} {}
InternetProvider_fa_IR <- R6::R6Class(
    inherit = InternetProvider,
    "InternetProvider_fa_IR",
    public = list(
        locale = "fa_IR",
        #' @field free_email_domains (character) free email tlds
        free_email_domains = int_free_email_domains_fa_ir,
        #' @field tlds (character) tlds
        tlds = int_tlds_fa_ir,
        #' @field safe_email_tlds (character) safe email tlds
        safe_email_tlds = int_safe_email_tlds_fa_ir
    )
)
