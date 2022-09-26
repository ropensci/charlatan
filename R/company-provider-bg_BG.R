# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/bg_BG/__init__.py
#' @title CompanyProvider bg_BG
#' @description company methods for locale Bulgarian (Bulgaria) (bg_BG). 
#' @export
#' @keywords internal
#' @examples
#' x <- company("bg_BG")
#' x$locale
#' x$company()
CompanyProvider_bg_BG <- R6::R6Class(
    lock_objects = FALSE,
    'CompanyProvider_bg_BG',
    inherit = CompanyProvider,
    public = list(
        company_formats = c(
            '{{last_name}} {{company_suffix}}',
            '{{last_name}} {{last_name2}} {{company_suffix}}',
            '{{last_name}}'
        ),
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
