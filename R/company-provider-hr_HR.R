# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/hr_HR/__init__.py
#' @title CompanyProvider Croatian (Croatia)
#' @inherit CompanyProvider description details return
#' @export
#' @family hr
#' @family HR
#' @examples
#' x <- CompanyProvider_hr_HR$new()
#' x$locale
#' x$company()
#' x$catch_phrase()
#' x$bs()
CompanyProvider_hr_HR <- R6::R6Class(
  lock_objects = FALSE,
  "CompanyProvider_hr_HR",
  inherit = CompanyProvider,
  private = list(
    company_formats = c(
      "{{last_name}} {{company_suffix}}",
      "{{last_name}} {{last_name2}} {{company_suffix}}",
      "{{last_name}}"
    ),
    # company_suffixes suffixes for in company names.
    company_suffixes = c(
      "d.o.o.", "d.d.", "j.d.o.o."
    ),
    locale_ = "hr_HR"
  )
)
