
person_formats_template <- c()

person_template <- c()

#' @title Person Provider for ...
#' @description person names methods
#' @export
#' @family ...
#' @details Note for female and male components that we fall back on generic
#' versions if the locale
#' doesn't provide a male/female version.
#' e.g., if no female first name we use first
#' name
#' @examples
#' x <- PersonProvider_template$new()
#' x$locale
#' x$render()
#' x$first_name()
#' x$first_name_female()
#' x$first_name_male()
#' x$last_name()
#' x$last_name_female()
#' x$last_name_male()
PersonProvider_template <- R6::R6Class(
    "PersonProvider_template",
    inherit = PersonProvider,
    private = list(
        # person name formats
        formats = person_formats_template,
        # person name data
        persons = person_template,
        locale_ = "template"
    )
)
