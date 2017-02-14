#' JobProvider
#'
#' @export
#' @keywords internal
#' @param locale (character) the locale to use. options: en_US (default),
#' fr_FR, fr_CH, hr_FR, fa_IR, pl_PL, ru_RU, uk_UA, zh_TW.
#' @details
#' \strong{Methods}
#'   \describe{
#'     \item{\code{render()}}{
#'       Make a job
#'     }
#'   }
#' @format NULL
#' @usage NULL
#' @examples
#' z <- JobProvider$new()
#' z$render()
#'
#' z <- JobProvider$new(locale = "fr_FR")
#' z$locale
#' z$render()
#'
#' z <- JobProvider$new(locale = "hr_HR")
#' z$locale
#' z$render()
#'
#' z <- JobProvider$new(locale = "fa_IR")
#' z$locale
#' z$render()
JobProvider <- R6::R6Class(
  inherit = BaseProvider,
  'JobProvider',
  public = list(
    locale = NULL,
    formats = NULL,

    initialize = function(locale = NULL) {
      if (!is.null(locale)) {
        super$check_locale(locale)
        self$locale <- locale
      } else {
        self$locale <- 'en_US'
      }
      self$formats <- parse_eval("job_formats_", self$locale)
    },

    render = function() {
      super$random_element(self$formats)
    }
  )
)

parse_eval <- function(x, y) {
  res <- tryCatch(
    eval(parse(text = paste0(x, tolower(y)))),
    error = function(E) E
  )
  if (inherits(res, "error")) {
    NULL
  } else {
    res
  }
}
