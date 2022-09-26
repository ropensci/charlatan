#' @title CompanyProvider template
#' @description company methods for locale (template). 
#' @export
#' @keywords internal
#' @examples
#' x <- company("template")
#' x$locale
#' x$company()
#' x$catch_phrase()
#' x$bs()
CompanyProvider_template <- R6::R6Class(
    lock_objects = FALSE,
    'CompanyProvider_template',
    inherit = CompanyProvider,
    public = list(
        # add data here, like
        #' @field catch_phrase_words (character) xxx
        catch_phrase_words = NULL,
        #' @field bsWords (character) xxx
        bsWords = NULL,
        #' @field siren_format (character) xxx
        siren_format = NULL,
        company_formats = NULL,
        ## add functions here
        #' @description a company name
        company = function() {
            # create your own company generator
        }
)
)
