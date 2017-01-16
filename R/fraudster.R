#' Fraudster - catch all client to make all types of fake data
#'
#' @export
#' @param locale (character) the locale to use. options: en_US (default),
#' fr_FR, fr_CH, hr_FR, fa_IR, pl_PL, ru_RU, uk_UA, zh_TW.
#' @examples
#' # English - the default locale
#' (x <- fraudster())
#' x$job()
#' x$color_name()
#' x$safe_color_name()
#' x$hex_color()
#' x$safe_hex_color()
#' x$rgb_color()
#' x$rgb_css_color()
#'
#' # different locales
#' ## French
#' (y <- fraudster(locale = "fr_FR"))
#' y$job()
#'
#' ## Croatian
#' (z <- fraudster(locale = "hr_HR"))
#' z$job()
#'
#' ## Ukranian
#' (w <- fraudster(locale = "uk_UA"))
#' w$job()
#' w$color_name()
fraudster <- function(locale = NULL) {
  FraudsterClient$new(locale = locale)
}

# the client -------------------
FraudsterClient <- R6::R6Class(
  'FraudsterClient',
  public = list(
    locale = NULL,

    initialize = function(locale = NULL) {
      if (!is.null(locale)) {
        check_locale_(locale)
        self$locale <- locale
      } else {
        self$locale <- 'en_US'
      }
    },

    print = function(x, ...) {
      cat("<fraudster>", sep = "\n")
      cat(paste0("  locale: ", self$locale))
    },

    job = function(n = 1) {
      ch_job(n = n, locale = self$locale)
    },

    color_name = function(n = 1) {
      ch_color_name(n = n, locale = self$locale)
    },

    safe_color_name = function(n = 1) {
      ch_color_name(n = n)
    },

    hex_color = function(n = 1) {
      ch_hex_color(n = n)
    },

    safe_hex_color = function(n = 1) {
      ch_safe_hex_color(n = n)
    },

    rgb_color = function(n = 1) {
      ch_rgb_color(n = n)
    },

    rgb_css_color = function(n = 1) {
      ch_rgb_css_color(n = n)
    }
  )
)
