#' @title CompanyProvider
#' @description company name/etc. methods
#' @export
#' @keywords internal
#' @examples
#' x <- CompanyProvider$new()
#' x$locale
#' x$company()
#' x$company_suffix()
#' x$catch_phrase()
#' x$bs()
#'
#' x <- CompanyProvider$new(locale = "fr_FR")
#' x$locale
#' x$company()
#' x$company_suffix()
#' x$siren()
#'
#' x <- CompanyProvider$new(locale = "hr_HR")
#' x$locale
#' x$company()
#' x$company_suffix()
#'
#' x <- CompanyProvider$new(locale = "it_IT")
#' x$locale
#' x$company()
#' x$company_suffix()
#' x$bs()
#'
#' CompanyProvider$new(locale = "es_MX")$bs()
#' CompanyProvider$new(locale = "es_MX")$company_prefix()
#' CompanyProvider$new(locale = "es_MX")$catch_phrase()
#'
#' CompanyProvider$new(locale = "bg_BG")$company()
#' CompanyProvider$new(locale = "cs_CZ")$company()
#' CompanyProvider$new(locale = "de_DE")$company()
#' CompanyProvider$new(locale = "fa_IR")$company()

CompanyProvider <- R6::R6Class(
  lock_objects = FALSE,
  'CompanyProvider',
  inherit = BaseProvider,
  public = list(
    #' @field locale (character) xxx
    locale = NULL,
    #' @field formats (character) xxx
    formats = NULL,
    #' @field prefixes (character) xxx
    prefixes = NULL,
    #' @field suffixes (character) xxx
    suffixes = NULL,
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
        self$locale <- 'en_US'
      }

      self$formats <- parse_eval("company_formats_", self$locale)
      self$prefixes <- parse_eval("company_prefixes_", self$locale)
      self$suffixes <- parse_eval("company_suffixes_", self$locale)
      self$catch_phrase_words <- parse_eval("catch_phrase_words_", self$locale)
      self$bsWords <- parse_eval("bsWords_", self$locale)
      self$siren_format <- parse_eval("siren_format_", self$locale)
    },

    #' @description a company name
    company = function() {
      if (self$locale == "fa_IR") {
        super$random_element(company_names_fa_ir)
      } else {
        private$make_company(self$locale, self$formats, self$suffixes)
      }
    },

    #' @description a company prefix
    company_prefix = function() {
      if (!is.null(self$prefixes)) {
        super$random_element(self$prefixes)
      } else {
        stop("company_prefix() not supported for ", self$locale, call. = FALSE)
      }
    },

    #' @description a company suffix
    company_suffix = function() {
      super$random_element(self$suffixes)
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

    make_company = function(locale, formats, suffix) {
      pattern <- super$random_element(formats)
      dat <- lapply(self$person[pluck_names(pattern, self$person)], sample,
                    size = 1)
      if (length(grep("last_name", names(dat))) > 1) {
        tmp <- grep("last_name", names(dat), value = TRUE)
        nms <- paste(tmp, seq_along(tmp), sep = "")
        names(dat)[grep("last_name", names(dat))] <- nms
      }

      nm <- super$random_element(
        eval(parse(text = paste0("person_last_names_", tolower(locale)))))

      whisker::whisker.render(
        template = pattern,
        data = list(
          last_name = nm,
          company_suffix = super$random_element(suffix)
        )
      )
    },

    locales = c("bg_BG", "cs_CZ", "de_DE", "en_US", "es_MX", "fa_IR",
      "fr_FR", "hr_HR", "it_IT")
  )
)
