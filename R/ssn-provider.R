#' @title SSNProvider
#' @description methods for generating social security numbers
#' @export
#' @returns a SSNProvider object for generating social security numbers.
SSNProvider <- R6::R6Class(
  inherit = BaseProvider,
  "SSNProvider",
  public = list(
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
    ),
    provider_ = "SSNProvider"
  )
)
