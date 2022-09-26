# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/hr_HR/__init__.py
#' @title CompanyProvider hr_HR
#' @description company methods for locale Croatian (Croatia) (hr_HR).
#' @export
#' @keywords internal
#' @examples
#' x <- company("hr_HR")
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
    company_formats = c(
      "{{last_name}} {{company_suffix}}",
      "{{last_name}} {{last_name2}} {{company_suffix}}",
      "{{last_name}}"
    ),
    company_suffixes = c(
      "d.o.o.", "d.d.", "j.d.o.o."
    ),
    ## add functions here
    #' @description a company name
    company = function() {
      pp <- PersonProvider$new(self$locale)
      pattern <- super$random_element(self$company_formats)
      dat <- list(
        last_name = pp$last_name(),
        last_name2 = pp$last_name(),
        company_suffix = super$random_element(self$company_suffixes)
      )
      whisker::whisker.render(template = pattern, data = dat)
    }
  )
)
