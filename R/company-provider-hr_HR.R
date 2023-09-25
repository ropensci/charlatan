# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/hr_HR/__init__.py
#' @title CompanyProvider hr_HR
#' @description company methods for locale Croatian (Croatia) (hr_HR).
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
  public = list(

    # add data here, like
    #' @field company_formats formats for company names.
    company_formats = c(
      "{{last_name}} {{company_suffix}}",
      "{{last_name}} {{last_name2}} {{company_suffix}}",
      "{{last_name}}"
    ),
    #' @field company_suffixes suffixes for in company names.
    company_suffixes = c(
      "d.o.o.", "d.d.", "j.d.o.o."
    )
    ## add custom functions here
  ),
  private = list(
    locale_ = "hr_HR"
  )
)
