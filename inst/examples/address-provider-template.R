## THIS IS A TEMPLATE FOR A NEW Address LOCALE
## AFTER YOU ARE DONE, REMOVE THESE TOP LINES
## AND SUBMIT A PULL REQUEST ON GITHUB.
## 
## INSTRUCTIONS:
## 0. LOOK AT AN EXISTING LOCALE FOR INSPIRATION
## 1. FIND THE LOCALE NOTATION YOU NEED F.I. SPANISH (SPAIN)
##   HAS LOCALE es_ES.
## 2. COPY THIS TEMPLATE
## 3. REPLACE ALL 
##    - THE WORDS `template` IN THIS FILE WITH THE LOCALE FROM STEP 1
##    - AND FILL IN {PLAIN TEXT} WITH A DESCRIPTION OF THE LOCALE, FORS SPANISH 
##    SPAIN THAT WOULD BE 'spanish (Spain)'
##    - SPLIT THE LOCALE 
## 4. SAVE AS lorem-provider-{LOCALE FROM STEP 1}.R 
## 5. FILL IN THE LOREM_WORD_LIST
## 6. ADD THE LOCALE FROM STEP 1 TO lorem-provider.R UNDER private ( locales )
## 6. OPTIONALLY: ADD NEW METHODS, IF YOU NEED THEM. AND CREATE TEST FOR THEM AND ADD AN EXAMPLE
## 7. USE THE {styler} PACKAGE TO STYLE THE FILE
## 8. RUN ALL THE TESTS IN THE PACKAGE

#' AddressProvider for {PLAIN TEXT}
#'
#' @inherit AddressProvider description details return
#' @export
#' @family ## STEP 3 HERE
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
        
        
        # Add  specific functions if you need them for your addresses, 
        # that is what makes the class inheritance so useful, we can make it as
        # specific as we need.
        
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
    ),
    private = list(
        locale_=template,
        # add locale data here:
        # like prefixes, suffixes formats
    )
)
