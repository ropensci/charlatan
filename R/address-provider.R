#' @title AddressProvider
#' @description Object to create addresses for a locale.
#' Makes use of [PersonProvider] for creating street names.
#'
#' @details
#' When there is no PersonProvider for this locale, we default back to en_US.
#'
#' @include datetime-provider.R
#' @family ParentProviders
#' @returns Returns an AddressProvider object.
#' @inherit BaseProvider note
#' @export
AddressProvider <- R6::R6Class(
  inherit = BaseProvider,
  "AddressProvider",
  lock_objects = FALSE,
  public = list(
    #' @description Create a new `AddressProvider` object
    #' @return A new `AddressProvider` object
    initialize = function() {
      super$initialize()
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
      private$pp <- cr_loc_spec_provider("PersonProvider", locale)
    }
  ),
  private = list(
    locales = c("en_US", "en_GB", "en_NZ", "nl_NL"),
    provider_ = "AddressProvider"
  )
)
