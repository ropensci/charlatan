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
#' @title FraudsterClient
#' @description Fraudster R6 client
#' @export
#' @keywords internal
#' @param n number of random things to generaate. an integer; default: 1
FraudsterClient <- R6::R6Class(
  "FraudsterClient",
  public = list(
    #' @field locale (character) the locale to use
    locale = NULL,

    #' @description Create a new `FraudsterClient` object
    #' @param locale (character) the locale to use. options: en_US (default),
    #' fr_FR, fr_CH, hr_FR, fa_IR, pl_PL, ru_RU, uk_UA, zh_TW.
    #' @return A new `RequestSignature` object
    initialize = function(locale = NULL) {
      if (!is.null(locale)) {
        check_locale_(locale)
        self$locale <- locale
      } else {
        self$locale <- "en_US"
      }
    },

    #' @description print method for the `FraudsterClient` class
    #' @param x self
    #' @param ... ignored
    print = function(x, ...) {
      cat("<fraudster>", sep = "\n")
      cat(paste0("  locale: ", self$locale))
    },

    #' @description jobs
    job = function(n = 1) {
      ch_job(n = n, locale = self$locale)
    },

    #' @description names
    name = function(n = 1) {
      ch_name(n = n, locale = self$locale)
    },

    #' @description colors
    color_name = function(n = 1) {
      ch_color_name(n = n, locale = self$locale)
    },

    #' @description safe color name
    safe_color_name = function(n = 1) {
      ch_color_name(n = n)
    },

    #' @description hex color
    hex_color = function(n = 1) {
      ch_hex_color(n = n)
    },

    #' @description safe hex color
    safe_hex_color = function(n = 1) {
      ch_safe_hex_color(n = n)
    },

    #' @description rgb color
    rgb_color = function(n = 1) {
      ch_rgb_color(n = n)
    },

    #' @description rgb css color
    rgb_css_color = function(n = 1) {
      ch_rgb_css_color(n = n)
    },

    #' @description latitude
    lat = function(n = 1) {
      ch_lat(n = n)
    },

    #' @description longitude
    lon = function(n = 1) {
      ch_lon(n = n)
    },

    #' @description long/lat coordinate pair
    #' @param bbox a bounding box, see [ch_position()]
    position = function(n = 1, bbox = NULL) {
      ch_position(n = n, bbox = bbox)
    },

    #' @description DOIs
    doi = function(n = 1) {
      ch_doi(n = n)
    },

    #' @description date times
    timezone = function(n = 1) {
      ch_timezone(n = n)
    },

    #' @description unix time
    unix_time = function(n = 1) {
      ch_unix_time(n = n)
    },

    #' @description date time
    date_time = function(n = 1) {
      ch_date_time(n = n)
    },

    #' @description taxonomic genus
    genus = function(n = 1) {
      ch_taxonomic_genus(n = n)
    },

    #' @description taxonomic epithet
    epithet = function(n = 1) {
      ch_taxonomic_epithet(n = n)
    },

    #' @description taxonomic species (genus + epithet)
    species = function(n = 1) {
      ch_taxonomic_species(n = n)
    },

    #' @description random genetic sequence
    #' @param length (integer) length of the sequence. default: 30
    sequence = function(n = 1, length = 30) {
      ch_gene_sequence(n = n, length = length)
    },

    #' @description phone number
    phone_number = function(n = 1) {
      ch_phone_number(n = n)
    },

    #' @description a double
    #' @param mean mean value, default: 0
    #' @param sd standard deviation, default: 1
    double = function(n = 1, mean = 0, sd = 1) {
      ch_double(n, mean, sd)
    },

    #' @description an integer
    #' @param min minimum value, default: 1
    #' @param max maximum value, default: 1000
    integer = function(n = 1, min = 1, max = 1000) {
      ch_integer(n, min, max)
    },

    #' @description an integer from a uniform distribution
    #' @param min minimum value, default: 0
    #' @param max maximum value, default: 9999
    uniform = function(n = 1, min = 0, max = 9999) {
      ch_unif(n, min, max)
    },

    #' @description an integer from a normal distribution
    #' @param mean mean value, default: 0
    #' @param sd standard deviation, default: 1
    norm = function(n = 1, mean = 0, sd = 1) {
      ch_norm(n, mean, sd)
    },

    #' @description an integer from a lognormal distribution
    #' @param mean mean value, default: 0
    #' @param sd standard deviation, default: 1
    lnorm = function(n = 1, mean = 0, sd = 1) {
      ch_lnorm(n, mean, sd)
    },

    #' @description an integer from a beta distribution
    #' @param shape1 non-negative parameters of the Beta distribution
    #' @param shape2 non-negative parameters of the Beta distribution
    #' @param ncp non-centrality parameter, default: 0
    beta = function(n = 1, shape1, shape2, ncp = 0) {
      ch_double(n = n)
    },

    #' @description currency
    currency = function(n = 1) {
      ch_currency(n = n)
    },

    #' @description credit card provider
    credit_card_provider = function(n = 1) {
      ch_credit_card_provider(n = n)
    },

    #' @description credit card number
    credit_card_number = function(n = 1) {
      ch_credit_card_number(n = n)
    },

    #' @description credit card security code
    credit_card_security_code = function(n = 1) {
      ch_credit_card_security_code(n = n)
    }
  )
)
