phone_number_formats_template <- c()

#' @title PhoneNumberProvider for ...
#' @inherit PhoneNumberProvider description details return
#' @family ...
#' @export
#' @examples
#' z <- PhoneNumberProvider_template$new()
#' z$render()
PhoneNumberProvider_template <- R6::R6Class(
    inherit = PhoneNumberProvider,
    "PhoneNumberProvider_template",
    private = list(
        locale_ = "template",
        formats = phone_number_formats_template
    )
)
