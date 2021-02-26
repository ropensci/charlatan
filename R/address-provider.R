#' @title AddressProvider
#' @description address methods
#' @include datetime-provider.R
#' @export
#' @keywords internal
#' @examples
#' (z <- AddressProvider$new())
#' z$locale
#' z$allowed_locales()
#' z$city_suffix()
#' z$street_suffix()
#' z$building_number()
#' z$city()
#' z$country()
#' z$street_name()
#' z$street_address()
#' z$address()
#' z$country()
#' z$country_code()
#' z$postcode()
#'
#' # en_GB
#' (z <- AddressProvider$new('en_GB'))
#' z$locale
#' z$locale_data
#' z$locale_data$postcode_sets
#' z$postcode
#' z$postcode()
#' z$street_name()
#'
#' # en_NZ
#' (z <- AddressProvider$new('en_NZ'))
#' z$locale
#' z$street_name()
#'
#' # es_ES
#' (z <- AddressProvider$new('es_ES'))
#' z$locale
#' z$street_name()
#'
#' # nl_NL
#' (z <- AddressProvider$new('nl_NL'))
#' z$locale
#' z$street_name()
#' z$postcode()
#' z$city()
AddressProvider <- R6::R6Class(
  inherit = BaseProvider,
  'AddressProvider',
  lock_objects = FALSE,
  public = list(
    #' @field locale (character) xxx
    locale = NULL,
    #' @field city_prefixes (character) xxx
    city_prefixes = NULL,
    #' @field city_suffixes (character) xxx
    city_suffixes = NULL,
    #' @field street_suffixes (character) xxx
    street_suffixes = NULL,
    #' @field building_number_formats (character) xxx
    building_number_formats = NULL,
    #' @field postcode_formats (character) xxx
    postcode_formats = NULL,
    #' @field states (character) xxx
    states = NULL,
    #' @field states_abbr (character) xxx
    states_abbr = NULL,
    #' @field military_state_abbr (character) xxx
    military_state_abbr = NULL,
    #' @field military_ship_prefix (character) xxx
    military_ship_prefix = NULL,
    #' @field military_apo_format (character) xxx
    military_apo_format = NULL,
    #' @field military_dpo_format (character) xxx
    military_dpo_format = NULL,
    #' @field city_formats (character) xxx
    city_formats = NULL,
    #' @field street_name_formats (character) xxx
    street_name_formats = NULL,
    #' @field street_address_formats (character) xxx
    street_address_formats = NULL,
    #' @field address_formats (character) xxx
    address_formats = NULL,
    #' @field secondary_address_formats (character) xxx
    secondary_address_formats = NULL,
    #' @field countries (character) xxx
    countries = vapply(DateTimeProvider$new()$countries, "[[", "", "name"),
    #' @field country_codes (character) xxx
    country_codes = vapply(DateTimeProvider$new()$countries, "[[", "", "code"),
    #' @field locale_data (character) xxx
    locale_data = list(),

    #' @description fetch the allowed locales for this provider
    allowed_locales = function() private$locales,

    #' @description Create a new `AddressProvider` object
    #' @param locale (character) the locale to use. See
    #' `$allowed_locales()` for locales supported (default: en_US)
    #' @return A new `AddressProvider` object
    initialize = function(locale = NULL) {
      if (!is.null(locale)) {
        # check global locales
        super$check_locale(locale)
        # check address provider locales
        check_locale_(locale, private$locales)
        self$locale <- locale
      } else {
        self$locale <- 'en_US'
      }

      self$city_prefixes <- parse_eval("city_prefixes_", self$locale)
      self$city_suffixes <- parse_eval("city_suffixes_", self$locale)
      self$building_number_formats <-
        parse_eval("building_number_formats_", self$locale)
      self$street_suffixes <- parse_eval("street_suffixes_", self$locale)
      self$postcode_formats <- parse_eval("postcode_formats_", self$locale)
      self$states <- parse_eval("states_", self$locale)
      self$states_abbr <- parse_eval("states_abbr_", self$locale)
      self$military_state_abbr <- parse_eval("military_state_abbr_", self$locale)
      self$military_ship_prefix <- parse_eval("military_ship_prefix_", self$locale)
      self$military_apo_format <- parse_eval("military_apo_format_", self$locale)
      self$military_dpo_format <- parse_eval("military_dpo_format_", self$locale)
      self$city_formats <- parse_eval("city_formats_", self$locale)
      self$street_name_formats <- parse_eval("street_name_formats_", self$locale)
      self$street_address_formats <- parse_eval("street_address_formats_", self$locale)
      self$address_formats <- parse_eval("address_formats_", self$locale)
      self$secondary_address_formats <- parse_eval("secondary_address_formats_", self$locale)

      # if any locale specific data, throw it in a list
      self$locale_data <- parse_eval("locale_data_", self$locale)
    },

    #' @description city suffix
    city_suffix = function() {
      super$random_element(self$city_suffixes)
    },

    #' @description street suffix
    street_suffix = function() {
      super$random_element(self$street_suffixes)
    },

    #' @description building numeber
    building_number = function() {
      super$numerify(super$random_element(self$building_number_formats))
    },

    #' @description city
    city = function() {
      pattern <- super$random_element(self$city_formats)
      # PersonProvider must implement the same locales for this to work
      pp <- PersonProvider$new(locale = self$locale)
      dat <- list(
        first_name = pp$first_name(),
        last_name = pp$last_name(),
        city_prefix = super$random_element(self$city_prefixes),
        city_suffix = super$random_element(self$city_suffixes)
      )
      whisker::whisker.render(pattern, data = dat)
    },

    #' @description street name
    street_name = function() {
      pattern <- super$random_element(self$street_name_formats)
      # PersonProvider must implement the same locales for this to work
      pp <- PersonProvider$new(locale = self$locale)
      dat <- list(
        first_name = pp$first_name(),
        last_name = pp$last_name(),
        street_suffix = super$random_element(self$street_suffixes)
      )
      if (self$locale == "en_NZ") {
        dat$te_reo_first <- super$random_element(self$locale_data$te_reo_first)
        dat$te_reo_part <- super$random_element(self$locale_data$te_reo_parts)
        dat$te_reo_ending <- super$random_element(self$locale_data$te_reo_ending)
      }
      whisker::whisker.render(pattern, data = dat)
    },

    #' @description street address
    street_address = function() {
      pattern <- super$random_element(self$street_address_formats)
      dat <- list(
        building_number = self$building_number(),
        street_name = self$street_name(),
        secondary_address = super$bothify(super$random_element(self$secondary_address_formats))
      )
      whisker::whisker.render(pattern, data = dat)
    },

    #' @description postal code
    postcode = function() {
      switch(
        self$locale,
        en_US = toupper(super$bothify(super$random_element(self$postcode_formats))),
        en_GB = {
          pcode <- ''
          pattern <- super$random_element(self$postcode_formats)
          pattern <- strsplit(pattern, split = "")[[1]]
          for (p in pattern) {
            pcode <- paste0(pcode,
                            super$random_element(self$locale_data$postcode_sets[[p]]))
          }
          pcode
        },
        nl_NL = {
          paste0(
            super$random_element(1000:9999),
            ' ',
            super$random_element(LETTERS),
            super$random_element(LETTERS)
          )
        }
      )
    },

    #' @description address
    address = function() {
      pattern <- super$random_element(self$address_formats)
      dat <- list(
        street_address = self$street_address(),
        city = self$city(),
        state_abbr = super$random_element(self$states_abbr),
        postcode = self$postcode()
      )
      whisker::whisker.render(pattern, data = dat)
    },

    #' @description country name
    country = function() {
      super$random_element(self$countries)
    },

    #' @description country code
    country_code = function() {
      super$random_element(self$country_codes)
    }

    # geo_coordinate = function(center = NULL, radius = 0.001) {
    #   # Optionally center the coord and pick a point within radius.
    #   if (is.null(center)) {
    #     Decimal(str(super$random_int(-180000000L, 180000000L) / 1000000L)).quantize(Decimal('.000001'))
    #   } else {
    #     center = float(center)
    #     radius = float(radius)
    #     geo = random.uniform(center - radius, center + radius)
    #     Decimal(str(geo)).quantize(Decimal('.000001'))
    #   }
    # }

    #     @classmethod
    #     def latitude(cls):
    #         # Latitude has a range of -90 to 90, so divide by two.
    #         return cls.geo_coordinate() / 2

    #     @classmethod
    #     def longitude(cls):
    #         return cls.geo_coordinate()
  ),
  private = list(
    locales = c("en_US", "en_GB", "en_NZ", "es_ES", "nl_NL")
  )
)
