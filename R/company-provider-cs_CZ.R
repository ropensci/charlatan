# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/cs_CZ/__init__.py
#' @title CompanyProvider for Czech
#' @inherit CompanyProvider description details return
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
  private = list(
    locale_ = "cs_CZ",
    # formats
    company_formats = c(
      "{{last_name}} {{company_suffix}}",
      "{{last_name}} {{last_name2}} {{company_suffix}}",
      "{{last_name}}"
    ),
    # company_suffixes suffixes for in company names.
    company_suffixes = c(
      "s.r.o.", "o.s.", "a.s."
    )
  )
)
