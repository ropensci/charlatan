#' @title company
#' @description company name/etc. methods
#' @export
#' @keywords internal
#' @examples
#' x <- company()
#' x$locale
#' x$company()
#' x$catch_phrase()
#' x$bs()
#'
#' x <- company(locale = "fr_FR")
#' x$locale
#' x$company()
#' x$company_suffix()
#' x$siren()
#'
#' x <- company(locale = "hr_HR")
#' x$locale
#' x$company()
#' x$company_suffix()
#'
#' x <- company(locale = "it_IT")
#' x$locale
#' x$company()
#' x$company_suffix()
#' x$bs()
#'
#' company(locale = "es_MX")$bs()
#' company(locale = "es_MX")$company_prefix()
#' company(locale = "es_MX")$catch_phrase()
#'
#' company(locale = "bg_BG")$company()
#' company(locale = "cs_CZ")$company()
#' company(locale = "de_DE")$company()
#' company(locale = "fa_IR")$company()
#'
company <- function(locale = NULL) {
  if (is.null(locale)) {
    return(CompanyProvider_en_US$new("en_US"))
  }
    cr_loc_spec_provider("CompanyProvider", locale)
}

#' @noRd
CompanyProvider <- R6::R6Class(
  lock_objects = FALSE,
  "CompanyProvider",
  inherit = BaseProvider,
  public = list(
    #' @field locale (character) xxx
    locale = NULL,
    #' @field formats (character) xxx
    #' formats = NULL,
    #' #' @field prefixes (character) xxx
    #' prefixes = NULL,
    #' #' @field suffixes (character) xxx
    #' suffixes = NULL,
    #' @field catch_phrase_words (character) xxx
    catch_phrase_words = NULL,
    #' @field bsWords (character) xxx
    bsWords = NULL,
    #' @field siren_format (character) xxx
    siren_format = NULL,

    #' @description fetch the allowed locales for this provider
    allowed_locales = function() private$locales,

    #' @description Create a new `CompanyProvider` object
    #' @param locale (character) the locale to use. See
    #' `$allowed_locales()` for locales supported (default: en_US)
    #' @return A new `CompanyProvider` object
    initialize = function(locale = NULL) {
      if (!is.null(locale)) {
        # check global locales
        super$check_locale(locale)
        # check person provider locales
        check_locale_(locale, private$locales)
        self$locale <- locale
      } else {
        self$locale <- "en_US"
      }
    },



    #' @description a catch phrase
    catch_phrase = function() {
      private$makeit(self$catch_phrase_words)
    },

    #' @description BS words
    bs = function() {
      private$makeit(self$bsWords)
    },

    #' @description a siren
    siren = function() {
      if (!is.null(self$siren_format)) {
        super$numerify(self$siren_format)
      } else {
        stop("siren() not supported for ", self$locale, call. = FALSE)
      }
    }
  ),
  private = list(
    makeit = function(x) {
      result <- list()
      for (i in seq_along(x)) {
        result[[i]] <- super$random_element(x[[i]])
      }
      paste0(result, collapse = " ")
    },
    locales = c(
      "bg_BG", "cs_CZ", "de_DE", "en_US", "es_MX", "fa_IR",
      "fr_FR", "hr_HR", "it_IT"
    )
  )
)
