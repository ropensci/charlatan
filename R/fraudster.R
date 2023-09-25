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
    #### basic functionality ####
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
      # initialize the non localized providers
      private$coordp <- CoordinateProvider$new()
      private$ccp <- CreditCardProvider$new()
      private$curp <- CurrencyProvider$new()
      private$dtp <- DateTimeProvider$new()
      private$doip <- DOIProvider$new()
      # missing data and misc provider not used.
      private$np <- NumericsProvider$new()
      private$sp <- SequenceProvider$new()
      ## for all localized providers enable if the locale is allowed,

      private$ap <- private$enable_provider_if_possible("AddressProvider", locale = self$locale)
      private$colp <- private$enable_provider_if_possible("ColorProvider", locale = self$locale)
      private$comp <- private$enable_provider_if_possible("CompanyProvider", locale = self$locale)
      private$ep <- private$enable_provider_if_possible("ElementProvider", locale = self$locale)
      private$fp <- private$enable_provider_if_possible("FileProvider", locale = self$locale)
      private$ip <- private$enable_provider_if_possible("InternetProvider", locale = self$locale)
      private$jp <- private$enable_provider_if_possible("JobProvider", locale = self$locale)
      private$lp <- private$enable_provider_if_possible("LoremProvider", locale = self$locale)
      private$pp <- private$enable_provider_if_possible("PersonProvider", locale = self$locale)
      private$pnp <- private$enable_provider_if_possible("PhoneNumberProvider", locale = self$locale)
      private$ssnp <- private$enable_provider_if_possible("SSNProvider", locale = self$locale)
      ## FIXME: taxonomyprovider should not be locale specific see issue #137
      private$tp <- private$enable_provider_if_possible("TaxonomyProvider", locale = "en_US")
      private$uap <- private$enable_provider_if_possible("UserAgentProvider", locale = self$locale)
    },

    #' @description print method for the `FraudsterClient` class
    #' @param x self
    #' @param ... ignored
    print = function(x, ...) {
      cat("<fraudster>", sep = "\n")
      cat(paste0("  locale: ", self$locale))
    },
    #### Localized providers ####
    #' @description jobs
    job = function(n = 1) {
      private$check_prov("JobProvider", "jp")
      assert(n, c("integer", "numeric"))
      replicate(n, private$jp$render())
    },

    #' @description names
    name = function(n = 1) {
      private$check_prov("PersonProvider", "pp")
      assert(n, c("integer", "numeric"))
      replicate(n, private$pp$render())
    },

    #' @description colors
    color_name = function(n = 1) {
      private$check_prov("ColorProvider", "colp")
      assert(n, c("integer", "numeric"))
      replicate(n, private$colp$color_name())
    },

    #' @description phone number
    phone_number = function(n = 1) {
      private$check_prov("PhoneNumberProvider", "pnp")
      assert(n, c("integer", "numeric"))
      replicate(n, private$pnp$render())
    },

    #' @description safe color name
    safe_color_name = function(n = 1) {
      private$check_prov("ColorProvider", "colp")
      assert(n, c("integer", "numeric"))
      replicate(n, private$colp$safe_color_name())
    },
    #' @description Create address
    address = function(n = 1) {
      private$check_prov("AddressProvider", "ap")
      assert(n, c("integer", "numeric"))
      replicate(n, private$ap$address())
    },
    #' @description Create company
    company = function(n = 1) {
      private$check_prov("CompanyProvider", "comp")
      assert(n, c("integer", "numeric"))
      replicate(n, private$comp$company())
    },
    #' @description Create an element (name).
    element = function(n = 1) {
      private$check_prov("ElementProvider", "ep")
      assert(n, c("integer", "numeric"))
      replicate(n, private$ep$element())
    },
    #' @description Create a File name.
    #' @param category (character) a category of file extension type, one of
    #' audio, image, office, text or video. default: `NULL`.
    file_name = function(n = 1, category = NULL) {
      private$check_prov("FileProvider", "fp")
      replicate(n, private$fp$file_name(category = category))
    },
    #' @description get an email address
    email = function(n = 1) {
      private$check_prov("InternetProvider", "ip")
      replicate(n, private$ip$email())
    },
    #' @description a url
    url = function(n = 1) {
      private$check_prov("InternetProvider", "ip")
      replicate(n, private$ip$url())
    },
    #' @description Generate many paragraphs
    lorem_paragraph = function(n = 1) {
      private$check_prov("LoremProvider", "lp")
      private$lp$paragraphs(n)
    },
    #' @description Make a SSN (Social Security Number).
    ssn = function(n = 1) {
      private$check_prov("SSNProvider", "ssnp")
      replicate(n, private$ssnp$render())
    },

    #### NON localized providers ####
    #' @description a mac address
    mac_address = function(n = 1) {
      ip <- InternetProvider_en_US$new()
      replicate(n, ip$mac_address())
    },
    #' @description create a element symbol
    element_symbol = function(n = 1) {
      ch_element_symbol(n)
    },
    #' @description hex color
    hex_color = function(n = 1) {
      assert(n, c("integer", "numeric"))
      # replicate(n,private$colp$hex_color())
      ch_hex_color(n)
    },

    #' @description safe hex color
    safe_hex_color = function(n = 1) {
      # assert(n, c("integer", "numeric"))
      # replicate(n,private$colp$safe_hex_color())
      ch_safe_hex_color(n = n)
    },

    #' @description rgb color
    rgb_color = function(n = 1) {
      assert(n, c("integer", "numeric"))
      ch_rgb_color(n = n)
    },

    #' @description rgb css color
    rgb_css_color = function(n = 1) {
      assert(n, c("integer", "numeric"))
      ch_rgb_css_color(n = n)
    },

    #' @description latitude
    lat = function(n = 1) {
      assert(n, c("integer", "numeric"))
      replicate(n, private$coordp$lat())
    },

    #' @description longitude
    lon = function(n = 1) {
      assert(n, c("integer", "numeric"))
      replicate(n, private$coordp$lon())
    },

    #' @description long/lat coordinate pair
    #' @param bbox a bounding box, see [ch_position()]
    position = function(n = 1, bbox = NULL) {
      assert(n, c("integer", "numeric"))
      replicate(n, private$coordp$position(bbox = bbox))
    },

    #' @description DOIs
    doi = function(n = 1) {
      assert(n, c("integer", "numeric"))
      replicate(n, private$doip$render())
    },

    #' @description date times
    timezone = function(n = 1) {
      assert(n, c("integer", "numeric"))
      replicate(n, private$dtp$timezone())
    },

    #' @description unix time
    unix_time = function(n = 1) {
      assert(n, c("integer", "numeric"))
      replicate(n, private$dtp$unix_time())
    },

    #' @description date time
    #' @param tzinfo timezone, see [timezone]
    date_time = function(n = 1, tzinfo = NULL) {
      assert(n, c("integer", "numeric"))
      # unfortunately posixct gets lost in replicate.
      as.POSIXct(
        replicate(n, private$dtp$date_time(tzinfo = tzinfo)),
        origin = "1970-01-01", tz = tzinfo
      )
    },

    #' @description taxonomic genus
    genus = function(n = 1) {
      assert(n, c("integer", "numeric"))

      replicate(n, private$tp$genus())
    },

    #' @description taxonomic epithet
    epithet = function(n = 1) {
      assert(n, c("integer", "numeric"))
      replicate(n, private$tp$epithet())
    },

    #' @description taxonomic species (genus + epithet)
    species = function(n = 1) {
      assert(n, c("integer", "numeric"))
      replicate(n, private$tp$species())
    },

    #' @description random genetic sequence
    #' @param length (integer) length of the sequence. default: 30
    sequence = function(n = 1, length = 30) {
      assert(n, c("integer", "numeric"))
      replicate(n, private$sp$render(length = length))
    },

    #' @description a double
    #' @param mean mean value, default: 0
    #' @param sd standard deviation, default: 1
    double = function(n = 1, mean = 0, sd = 1) {
      assert(n, c("integer", "numeric"))
      private$np$double(n, mean, sd)
    },

    #' @description an integer
    #' @param min minimum value, default: 1
    #' @param max maximum value, default: 1000
    integer = function(n = 1, min = 1, max = 1000) {
      assert(n, c("integer", "numeric"))
      private$np$integer(n, min, max)
    },

    #' @description an integer from a uniform distribution
    #' @param min minimum value, default: 0
    #' @param max maximum value, default: 9999
    uniform = function(n = 1, min = 0, max = 9999) {
      assert(n, c("integer", "numeric"))
      private$np$unif(n, min, max)
    },

    #' @description an integer from a normal distribution
    #' @param mean mean value, default: 0
    #' @param sd standard deviation, default: 1
    norm = function(n = 1, mean = 0, sd = 1) {
      assert(n, c("integer", "numeric"))
      private$np$norm(n, mean, sd)
    },

    #' @description an integer from a lognormal distribution
    #' @param mean mean value, default: 0
    #' @param sd standard deviation, default: 1
    lnorm = function(n = 1, mean = 0, sd = 1) {
      assert(n, c("integer", "numeric"))
      private$np$lnorm(n, mean, sd)
    },

    #' @description an integer from a beta distribution
    #' @param shape1 non-negative parameters of the Beta distribution
    #' @param shape2 non-negative parameters of the Beta distribution
    #' @param ncp non-centrality parameter, default: 0
    beta = function(n = 1, shape1, shape2, ncp = 0) {
      assert(n, c("integer", "numeric"))
      private$np$beta(n, shape1, shape2, ncp)
    },

    #' @description currency
    currency = function(n = 1) {
      assert(n, c("integer", "numeric"))
      replicate(n, private$curp$render())
    },

    #' @description credit card provider
    credit_card_provider = function(n = 1) {
      assert(n, c("integer", "numeric"))
      replicate(n, private$ccp$credit_card_provider())
    },

    #' @description credit card number
    credit_card_number = function(n = 1) {
      assert(n, c("integer", "numeric"))
      replicate(n, private$ccp$credit_card_number())
    },

    #' @description credit card security code
    credit_card_security_code = function(n = 1) {
      assert(n, c("integer", "numeric"))
      replicate(n, private$ccp$credit_card_security_code())
    }
  ),
  private = list(
    # providers with locales
    ap = NULL,
    colp = NULL, # color
    comp = NULL, # company
    ep = NULL, # element provider
    fp = NULL, # file provider
    ip = NULL,
    jp = NULL,
    lp = NULL,
    pp = NULL,
    pnp = NULL,
    ssnp = NULL,
    tp = NULL,
    uap = NULL,
    # providers without locales
    coordp = NULL,
    ccp = NULL, # credit card
    curp = NULL, # currency
    dtp = NULL, # datetime
    doip = NULL,
    np = NULL, # numeric
    sp = NULL, # sequence
    enable_provider_if_possible = function(provider, locale) {
      if (locale %in% cr_loc_spec_provider(provider, "en_US")$allowed_locales()) {
        cr_loc_spec_provider(provider, locale)
      } else {
        NULL
      }
    },
    # check if provider is active
    check_prov = function(provider, abbr) {
      if (is.null(private[[abbr]])) {
        stop(sprintf("There is no locale %s for provider %s", self$locale, provider))
      }
    }
  )
)
