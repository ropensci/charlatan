##Copy this template and replace _template with your locale.
## fill in at least the ... parts, but feel also free to update the descriptions
## of functions if that makes things more clear.


#' Addressprovider for ...
#' 
#' @description Address methods for ...
#' @export
#' @examples
#' (z <- AddressProvider_template$new())
#' z$locale
#' z$postcode()
#' z$street_name()
#' z$address()
#' z$city()
AddressProvider_template <- R6::R6Class(
    inherit = AddressProvider,
    "AddressProvider_template",
    lock_objects = FALSE,
    public = list(
        # add locale data here:
        # like prefixes, suffixes formats
        
        # Add more specific functions if you need them for your addresses, 
        # that is what makes the class inheritance so useful, we can make it as
        # specific as we need.
        
        #' @description locale (character) _template Locale.
        locale = "_template", # locales have no leading _.
        #' @description Create an address, a combination of street, postal code and city.
        address = function(){
            # override this required function 
        },
        #' @description Create a city
        city = function() {
            # override this required function
        },
        #' @description Create a street name
        street_name = function() {
            # override this required function
        },
        #' @description Create a street address, a combination of streetname and house indicator.
        street_address = function() {
            # override this required function
        },
        #' @description create a postal code
        postcode = function() {
            # override this required function
        }
    )
)
