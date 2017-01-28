#' PersonProvider
#'
#' @export
#' @keywords internal
#' @param locale (character) the locale to use. options: en_US (default),
#' fr_FR, fr_CH, hr_FR, fa_IR, pl_PL, ru_RU, uk_UA, zh_TW.
#' @details
#' \strong{Methods}
#'   \describe{
#'     \item{\code{render()}}{
#'       Make a person's name
#'     }
#'   }
#' @format NULL
#' @usage NULL
#' @examples
#' x <- PersonProvider$new()
#' x$render()
#'
#' z <- PersonProvider$new(locale = "fr_FR")
#' z$locale
#' z$render()
#'
#' PersonProvider$new(locale = "fr_CH")$render()
#' PersonProvider$new(locale = "fi_FI")$render()
#' PersonProvider$new(locale = "fa_IR")$render()
#' PersonProvider$new(locale = "es_ES")$render()
#' PersonProvider$new(locale = "de_DE")$render()
#' PersonProvider$new(locale = "de_AT")$render()
#' PersonProvider$new(locale = "cs_CZ")$render()
#' PersonProvider$new(locale = "bg_BG")$render()
#' PersonProvider$new(locale = "dk_DK")$render()
PersonProvider <- R6::R6Class(
  'PersonProvider',
  inherit = BaseProvider,
  public = list(
    locale = NULL,
    formats = person_formats_en_us,
    person = person_en_us,

    initialize = function(locale = NULL) {
      if (!is.null(locale)) {
        super$check_locale(locale)
        self$locale <- locale
      } else {
        self$locale <- 'en_US'
      }
      self$formats <- parse_eval("person_formats_", self$locale)
      self$person <- parse_eval("person_", self$locale)
    },

    render = function() {
      fmt <- super$random_element(self$formats)
      dat <- lapply(self$person[pluck_names(fmt, self$person)], sample, size = 1)
      whisker::whisker.render(fmt, data = dat)
    }
  )
)
