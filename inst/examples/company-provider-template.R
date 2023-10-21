#' @title CompanyProvider template
#' @inherit CompanyProvider description details return
#' @export
#' @family # put your locales here
#' @export
#' @examples
#' (x <- CompanyProvider_template$new())
#' x$locale
#' x$company()
#' x$catch_phrase()
#' x$bs()
CompanyProvider_template <- R6::R6Class(
    lock_objects = FALSE,
    'CompanyProvider_template',
    inherit = CompanyProvider,
    public = list(
        ## add functions here, for example if you
        ## want to overwrite the company() function
        ## do it here:
        #' @description a company name
        # company = function() {
        #     # create your own company generator
        # },
    ),
    private = list(
        # add data here, like
        # catch_phrase_words (character) xxx
        catch_phrase_words = NULL,
        # bsWords (character) xxx
        bsWords = NULL,
        # company formats
        company_formats = NULL,
        
        locale_ = template
        
        
)
)
