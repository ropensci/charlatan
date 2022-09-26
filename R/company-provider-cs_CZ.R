# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/cs_CZ/__init__.py
#' @title CompanyProvider cs_CZ
#' @description company methods for locale Czech (Czechia) (cs_CZ). 
#' @export
#' @keywords internal
#' @examples
#' x <- company("cs_CZ")
#' x$locale
#' x$company()
CompanyProvider_cs_CZ <- R6::R6Class(
    lock_objects = FALSE,
    'CompanyProvider_cs_CZ',
    inherit = CompanyProvider,
    public = list(
        # add data here, like
        company_formats = c(
            '{{last_name}} {{company_suffix}}',
            '{{last_name}} {{last_name2}} {{company_suffix}}',
            '{{last_name}}'
        ),
        company_suffixes = c(
            's.r.o.', 'o.s.', 'a.s.'
        ),
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

