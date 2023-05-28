# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/cs_CZ/__init__.py
#' @title CompanyProvider cs_CZ
#' @description company methods for locale Czech (Czechia) (cs_CZ).
#' @family cs
#' @family CZ
#' @export
#' @examples
#' x <- CompanyProvider_cs_CZ$new()
#' x$locale
#' x$company()
CompanyProvider_cs_CZ <- R6::R6Class(
  lock_objects = FALSE,
  "CompanyProvider_cs_CZ",
  inherit = CompanyProvider,
  public = list(
    #' @field locale locale for this provider
    locale = "cs_CZ",
    # add data here, like
    #' @field company_formats formats for company names.
    company_formats = c(
      "{{last_name}} {{company_suffix}}",
      "{{last_name}} {{last_name2}} {{company_suffix}}",
      "{{last_name}}"
    ),
    #' @field company_suffixes suffixes for in company names.
    company_suffixes = c(
      "s.r.o.", "o.s.", "a.s."
    )
  )
)
