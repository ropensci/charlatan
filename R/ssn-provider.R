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
  'SSNProvider',
  public = list(
    #' @field locale (character) the locale
    locale = NULL,

    #' @description fetch the allowed locales for this provider
    allowed_locales = function() private$locales,

    #' @description Create a new `SSNProvider` object
    #' @param locale (character) the locale to use. See
    #' `$allowed_locales()` for locales supported (default: en_US)
    #' @return A new `SSNProvider` object
    initialize = function(locale = NULL) {
      if (!is.null(locale)) {
        # check locale globally supported
        super$check_locale(locale)
        # check job provider locales
        check_locale_(locale, private$locales)
        self$locale <- locale
      } else {
        self$locale <- 'en_US'
      }

    },

    #' @description Make a SSN
    render = function() {

      # Adapted from https://github.com/joke2k/faker/blob/e14abc47e5f1ea7ce62f068c4aac6b9f51db6f5c/faker/providers/ssn/en_US/__init__.py#L219-L231

      # Certain numbers are invalid for United States Social Security
      # Numbers. The area (first 3 digits) cannot be 666 or 900-999.
      # The group number (middle digits) cannot be 00. The serial
      # (last 4 digits) cannot be 0000.

      area <- sample.int(898, 1)
      group <- sample.int(99, 1)
      serial <- sample.int(9999, 1)

      if(area >= 666) area <- area + 1

      sprintf("%03d-%02d-%04d", area, group, serial)

    }
  ),

  private = list(
    locales = c(
      "en_US" # TODO
    )
  )
)
