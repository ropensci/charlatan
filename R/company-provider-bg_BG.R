# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/bg_BG/__init__.py
#' @title CompanyProvider bg_BG
#' @inherit CompanyProvider description details return
#' @export
#' @family bg
#' @family BG
#' @examples
#' x <- CompanyProvider_bg_BG$new()
#' x$locale
#' x$company()
CompanyProvider_bg_BG <- R6::R6Class(
  lock_objects = FALSE,
  "CompanyProvider_bg_BG",
  inherit = CompanyProvider,
  public = list(),
  private = list(
    # company_formats formats for company names.
    company_formats = c(
      "{{last_name}} {{company_suffix}}",
      "{{last_name}} {{last_name2}} {{company_suffix}}",
      "{{last_name}}"
    ),
    # company_suffixes suffixes for in company names.
    company_suffixes = c(
      "\u0410\u0414",
      "AD",
      "ADSITz",
      "\u0410\u0414\u0421\u0418\u0426",
      "EAD",
      "\u0415\u0410\u0414",
      "EOOD",
      "\u0415\u041e\u041e\u0414",
      "ET",
      "ET",
      "OOD",
      "\u041e\u041e\u0414",
      "KD",
      "\u041a\u0414",
      "KDA",
      "\u041a\u0414\u0410",
      "SD",
      "\u0421\u0414"
    ),
    locale_ = "bg_BG"
  )
)
