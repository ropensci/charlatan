#' Fraudster - catch all client to make all types of fake data
#'
#' @export
#' @param locale (character) the locale to use. options: en_US (default),
#' fr_FR, fr_CH, hr_FR, fa_IR, pl_PL, ru_RU, uk_UA, zh_TW.
#' @examples
#' # English - the default locale
#' (x <- fraudster())
#' x$job()
#' x$name()
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
#'
#' # geospatial
#' x$lat()
#' x$lon()
#' x$position()
#'
#' # DOIs (Digital Object Identifier)
#' x$doi()
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

    # jobs
    job = function(n = 1) {
      ch_job(n = n, locale = self$locale)
    },

    # names
    name = function(n = 1) {
      ch_name(n = n, locale = self$locale)
    },

    # colors
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
    },

    # coordinates
    lat = function(n = 1) {
      ch_lat(n = n)
    },

    lon = function(n = 1) {
      ch_lon(n = n)
    },

    position = function(n = 1, bbox = NULL) {
      ch_position(n = n, bbox = bbox)
    },

    # doi
    doi = function(n = 1) {
      ch_doi(n = n)
    },

    # date times
    timezone = function(n = 1) {
      ch_timezone(n = n)
    },

    unix_time = function(n = 1) {
      ch_unix_time(n = n)
    },

    date_time = function(n = 1) {
      ch_date_time(n = n)
    },

    # taxonomy
    genus = function(n = 1) {
      ch_taxonomic_genus(n = n)
    },

    epithet = function(n = 1) {
      ch_taxonomic_epithet(n = n)
    },

    species = function(n = 1) {
      ch_taxonomic_species(n = n)
    },

    # sequences
    sequence = function(n = 1, length = 30) {
      ch_sequence(n = n, length = length)
    },

    # phone number
    phone_number = function(n = 1) {
      ch_phone_number(n = n)
    },

    # numbers
    double = function(n = 1, mean = 0, sd = 1) {
      ch_double(n, mean, sd)
    },

    integer = function(n = 1, min = 1, max = 1000) {
      ch_integer(n, min, max)
    },

    uniform = function(n = 1, min = 0, max = 9999) {
      ch_unif(n, min, max)
    },

    norm = function(n = 1, mean = 0, sd = 1) {
      ch_norm(n, mean, sd)
    },

    lnorm = function(n = 1, mean = 0, sd = 1) {
      ch_lnorm(n, mean, sd)
    },

    beta = function(n = 1, shape1, shape2, ncp = 0) {
      ch_double(n = n)
    },

    # currency
    currency = function(n = 1) {
      ch_currency(n = n)
    },

    # credit card
    credit_card_provider = function(n = 1) {
      ch_credit_card_provider(n = n)
    },

    credit_card_number = function(n = 1) {
      ch_credit_card_number(n = n)
    },

    credit_card_security_code = function(n = 1) {
      ch_credit_card_security_code(n = n)
    }
  )
)
