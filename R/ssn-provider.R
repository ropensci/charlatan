#' @title SSNProvider
#' @description methods for generating social security numbers
#' @export
#' @keywords internal
#' @examples
#' z <- SSNProvider$new()
#' z$render()
#'
SSNProvider <- R6::R6Class(
  inherit = BaseProvider,
  "SSNProvider",
  public = list(
    #' @field locale (character) the locale
    locale = NULL,
    #' @description fetch the allowed locales for this provider
    allowed_locales = function() private$locales,

    #' @description Create a new `SSNProvider` object
    #' @return A new `SSNProvider` object
    initialize = function() {
      if (is.null(self$locale)) {
        raise_class("PhoneNumberProvider")
      }
    },

    #' @description Make a SSN
    render = function() {
      # every country has a different system
      # so these are just 10 numbers
      self$numerify("##########")
    }
  ),
  private = list(
    locales = c(
      "en_US", "nl_NL"
    )
  )
)
