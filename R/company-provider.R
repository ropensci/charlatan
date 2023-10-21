#' @title CompanyProvider
#' @description company name/etc. methods
#'
#' Note that you cannot instantiate this class, you can only
#' use the localized versions such as [CompanyProvider_en_US].
#' @export
#' @family ParentProviders
#' @returns A CompanyProvider object that can create companies.
CompanyProvider <- R6::R6Class(
  lock_objects = FALSE,
  "CompanyProvider",
  inherit = BaseProvider,
  public = list(
    #' @description Create a new `CompanyProvider` object
    #' @return A new `CompanyProvider` object
    initialize = function() {
      if (is.null(self$locale)) {
        raise_class("CompanyProvider")
      }
      private$init()
    },
    #' @description a company name
    company = function() {
      pattern <- super$random_element(private$company_formats)
      dat <- list(
        last_name = self$pp$last_name(),
        last_name2 = self$pp$last_name(),
        company_suffix = super$random_element(private$company_suffixes)
      )
      whisker::whisker.render(template = pattern, data = dat)
    },

    #' @description a catch phrase
    catch_phrase = function() {
      private$makeit(private$catch_phrase_words)
    },

    #' @description BS words
    bs = function() {
      private$makeit(private$bsWords)
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
    init = function() {
      if (!is.null(self$locale)) {
        self$pp <- cr_loc_spec_provider("PersonProvider", self$locale)
      }
    },
    locales = c(
      "bg_BG", "cs_CZ", "de_DE", "en_US", "es_MX", "fa_IR",
      "fr_FR", "hr_HR", "it_IT"
    ),
    # formats (character) xxx
    formats = NULL,
    # prefixes (character) xxx
    prefixes = NULL,
    # suffixes (character) xxx
    suffixes = NULL,
    # catch_phrase_words (character) xxx
    catch_phrase_words = NULL,
    # bsWords (character) xxx
    bsWords = NULL,
    provider_ = "CompanyProvider"
  )
)
