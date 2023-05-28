#' @title AddressProvider
#' @description address methods
#' @include datetime-provider.R
#' @keywords internal
#' @export
AddressProvider <- R6::R6Class(
  inherit = BaseProvider,
  "AddressProvider",
  lock_objects = FALSE,
  public = list(
    #' @field locale (character) Locale
    locale = NULL,
    #' @description all allowed locales
    allowed_locales = function() private$locales,
    #' @description Create a new `AddressProvider` object
    #' @return A new `AddressProvider` object
    initialize = function() {
      if (is.null(self$locale)) raise_class("AddressProvider")
      self$init_person_provider(self$locale)
    },
    #' @description Create an address, a combination of street, postal code and city.
    address = function() {
      # override this required function in the subclass
    },
    #' @description Create a city
    city = function() {
      # override this required function in the subclass
    },
    #' @description Create a street name.
    street_name = function() {
      # override this required function in the subclass
    },
    #' @description Create a street address, a combination of streetname and house indicator.
    street_address = function() {
      # override this required function in the subclass
    },
    #' @description Create a postal code
    postcode = function() {
      # override this required function in the subclass
    },
    #' @description initialize the person provider (for use in addresses based on names)
    #' @param locale locale
    init_person_provider = function(locale) {
      self$pp <- cr_loc_spec_provider("PersonProvider", locale)
    }
  ),
  private = list(
    locales = c("en_US", "en_GB", "en_NZ", "nl_NL"),
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
