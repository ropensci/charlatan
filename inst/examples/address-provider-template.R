##Copy this template and replace _template with your locale.
# modified from the python library faker

AddressProvider_template <- R6::R6Class(
    inherit = AddressProvider,
    "AddressProvider_template",
    lock_objects = FALSE,
    public = list(
        # add your data here
        
        
        # Fill in these functions
        #' @description address
        address = function(){
            # override this required function 
        },
        #' @description city
        city = function() {
            # override this required function
        },
        #' @description street name
        street_name = function() {
            # override this required function
        },
        #' @description street address
        street_address = function() {
            # override this required function
        },
        #' @description postal code
        postcode = function() {
            # override this required function
        }
        # Add more specific functions if you need them for your addresses, 
        # that is what makes the class inheritance so useful, we can make it as
        # specific as we need.
    )
)
