## THIS IS A TEMPLATE FOR A NEW ColorProvider LOCALE
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

#' @title ColorProvider {PLAIN TEXT}
#' @inherit ColorProvider description details return
#' @export
#' @family ## STEP 3 HERE
#' @examples
#' x <- ColorProvider_template$new()
#' x$locale
#' x$color_name()
#' x$safe_color_name()
#' x$hex_color()
#' x$safe_hex_color()
#' x$rgb_color()
#' x$rgb_css_color()
ColorProvider_template <- R6::R6Class(
    inherit = ColorProvider,
    "ColorProvider_template",
    lock_objects = FALSE,
    private =list(
        locale_ = template,
        # at a minimum fill in all_color names, and safe_colors.
        # A vector with named list items containing the name of the color and the hex value.
        all_colors = c(
            list(colorname="#hexcode")
        ),
        safe_colors = c(
            'colorname',
            "colorname"
        )
        
    )
)
