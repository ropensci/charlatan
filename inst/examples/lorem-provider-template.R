## THIS IS A TEMPLATE FOR A NEW LOREM LOCALE
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
##    - SPLIT THE LOCALE AND ADD BOTH PARTS TO @family: 
##      `@family es` and `@family ES`
## 4. SAVE AS lorem-provider-{LOCALE FROM STEP 1}.R 
## 5. FILL IN THE LOREM_WORD_LIST
## 6. ADD THE LOCALE FROM STEP 1 TO lorem-provider.R UNDER private ( locales )
## 6. OPTIONALLY: ADD NEW METHODS, IF YOU NEED THEM. AND CREATE TEST FOR THEM AND ADD AN EXAMPLE
## 7. USE THE {styler} PACKAGE TO STYLE THE FILE
## 8. RUN ALL THE TESTS IN THE PACKAGE
## 9. SUBMIT A PULL REQUEST ON GITHUB

lorem_word_list_template <- c(
    ## STEP 5 HERE
)


#' @title LoremProvider {PLAIN TEXT}
#' @inherit LoremProvider description return
#' @export
#' @family ## STEP 3 HERE
#' @examples
#' x <- LoremProvider_template$new()
#' x$word()
#' x$words(3)
#' x$words(6)
#' x$sentence()
#' x$paragraph()
#' x$paragraphs(3)
#' cat(x$paragraphs(6), sep = "\n")
#' x$text(19)
#' x <- LoremProvider_provider$new(word_connector = " --- ")
#' x$paragraph(4)
LoremProvider_template <- R6::R6Class(
    inherit = LoremProvider,
    "LoremProvider_template",
    private = list(
        locale_=template,
        word_list = lorem_word_list_template,
    )
)
