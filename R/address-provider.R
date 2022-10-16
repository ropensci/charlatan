#' addresses
#' @export
#' @examples
#' x <- addresses("es_ES")
#' self <- x
#' x
#' x$locale
#' x$street_name()
#' x$street_prefix()
#' x$secondary_address()
#' x$state()
addresses <- function(locale = NULL) {
  if (is.null(locale)) {
    return(AddressProvider_en_US$new("en_US"))
  }
  cr_loc_spec_provider("AddressProvider", locale)
}

#' @title AddressProvider
#' @description address methods
#' @include datetime-provider.R
#' @export
#' @keywords internal
#' @examples
#' (z <- AddressProvider$new())
#' z$locale
#' z$allowed_locales()
#' z$city_suffix()
#' z$street_suffix()
#' z$building_number()
#' z$city()
#' z$country()
#' z$street_name()
#' z$street_address()
#' z$address()
#' z$country()
#' z$country_code()
#' z$postcode()
#'
#' # en_GB
#' (z <- AddressProvider$new("en_GB"))
#' z$locale
#' z$locale_data
#' z$locale_data$postcode_sets
#' z$postcode
#' z$postcode()
#' z$street_name()
#'
#' # en_NZ
#' (z <- AddressProvider$new("en_NZ"))
#' z$locale
#' z$street_name()
#'
#' # es_ES
#' (z <- AddressProvider$new("es_ES"))
#' z$locale
#' z$street_name()
#'
#' # nl_NL
#' (z <- AddressProvider$new("nl_NL"))
#' z$locale
#' z$street_name()
#' z$postcode()
#' z$city()
AddressProvider <- R6::R6Class(
  inherit = BaseProvider,
  "AddressProvider",
  lock_objects = FALSE,
  public = list(
    #' @field locale (character) xxx
    locale = NULL,
    #' @description fetch the allowed locales for this provider
    allowed_locales = function() private$locales,
    #' @description Create a new `AddressProvider` object
    #' @param locale (character) the locale to use. See
    #' `$allowed_locales()` for locales supported (default: en_US)
    #' @return A new `AddressProvider` object
    initialize = function(locale = NULL) {
      if (!is.null(locale)) {
        # check global locales
        super$check_locale(locale)
        # check address provider locales
        check_locale_(locale, private$locales)
        self$locale <- locale
      } else {
        stop("use the `addresses` function to create a locale specific address instance.")
      }
    },
    #' @description address
    address = function() {
      # override this required function in the subclass
    },
    #' @description city
    city = function() {
      # override this required function in the subclass
    },
    #' @description street name
    street_name = function() {
      # override this required function in the subclass
    },
    #' @description street address
    street_address = function() {
      # override this required function in the subclass
    },
    #' @description postal code
    postcode = function() {
      # override this required function in the subclass
    }
  ),
  private = list(
    locales = c("en_US", "en_GB", "en_NZ", "nl_NL"),
    #' @param str a pattern
    fetch_parts = function(str) {
      pats <- strxt(str, "[A-Za-z]+_[A-Za-z]+")[[1]]
      res <- list()
      for (i in seq_along(pats)) {
        tmp <- self[[pats[i]]]
        res[[pats[i]]] <- if (is.function(tmp)) tmp() else super$random_element(tmp)
      }
      return(res)
    }
  )
)
