# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/address/nl_nl/__init__.py

#' AddressProvider for The Netherlands
#'
#' @inherit AddressProvider description details return
#' @export
#' @family nl
#' @family NL
#' @examples
#' (z <- AddressProvider_nl_NL$new())
#' z$locale
#' z$postcode()
#' z$street_name()
#' z$address()
#' z$city()
#' z$province()
AddressProvider_nl_NL <- R6::R6Class(
  inherit = AddressProvider,
  "AddressProvider_nl_NL",
  lock_objects = FALSE,
  public = list(
    # Fill in these functions
    #' @description Create an address, a combination of street, postal code and city.
    #' The three components street, postal code and city are generated
    #' independently, so they are not related.
    address = function() {
      pattern <- super$random_element(private$address_formats)
      dat <- list(
        street_address = self$street_address(),
        city = self$city(),
        postcode = self$postcode()
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description Create a city
    city = function() {
      pattern <- super$random_element(private$city_formats)

      dat <- list(
        first_name = private$pp$first_name(),
        last_name = private$pp$last_name(),
        city_prefix = super$random_element(private$city_prefixes),
        city_suffix = super$random_element(private$city_suffixes)
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description Create a street name
    street_name = function() {
      pattern <- super$random_element(private$street_name_formats)
      dat <- list(
        first_name = private$pp$first_name(),
        last_name = private$pp$last_name(),
        street_suffix = super$random_element(private$street_suffixes)
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description Create a street address,
    #' a combination of streetname and house indicator.
    street_address = function() {
      pattern <- super$random_element(private$street_address_formats)
      dat <- list(
        building_number = self$building_number(),
        street_name = self$street_name()
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description Create a postal code,
    #' does not exclude impossible postcodes in The Netherlands
    #' (leading zero for examples) but looks good enough for most purposes.
    postcode = function() {
      toupper(super$bothify(super$random_element(private$postcode_formats)))
    },
    #' @description building number.
    building_number = function() {
      super$numerify(super$random_element(private$building_number_formats))
    },
    #' @description Create a province.
    province = function() {
      super$random_element(private$provinces)
    }
  ),
  private = list(
    # add your data here
    # Prefixes for cities.
    # Combining suffix and prefix makes a random city.
    city_prefixes = c(
      "Veen", "U", "Amster", "Heeren", "Ooster", "Nieuw", "Amers", "Maas", "Kaas",
      "Pieters", "Jans", "Groonen", "E", "Rhenen", "Eind", "Swellen", "Kroon",
      "Uiten", "Boter", "Bloem", "Jagers", "Klerks", "Rusten", "Oudt", "Oud", "Veld"
    ),
    # Suffixes for cities.
    # Combining suffix and prefix makes a random city.
    city_suffixes = c(
      "daal",
      "dael",
      "endaal",
      "",
      "trecht",
      "tricht",
      "land",
      "stad",
      "berg",
      "burg",
      "dam",
      "foort",
      "veen",
      "ven",
      "hoven",
      "venen",
      "mere",
      "meren",
      "rode",
      "hage",
      "fontein",
      "park",
      "dorp",
      "hoorn",
      "bos",
      "bosch",
      "veld"
    ),
    # Formats for building numbers
    building_number_formats = c("#", "##", "###"),
    # combined with street prefix creates a street.
    street_suffixes = c(
      "kade",
      "straat",
      "laan",
      "hof",
      "weg",
      "steeg"
    ),
    # Formats for postal codes
    postcode_formats = c("#### ??"),
    # formats for creating a city name.
    city_formats = c(
      "{{city_prefix}}{{city_suffix}}",
      "{{first_name}}{{city_suffix}}"
    ),
    # formats for creating a street name.
    street_name_formats = c(
      "{{first_name}}{{street_suffix}}",
      "{{last_name}}{{street_suffix}}"
    ),
    # formats for creating a street address.
    street_address_formats = c(
      "{{street_name}} {{building_number}}"
    ),
    # formats for creating an address.
    address_formats = "{{street_address}}\n{{postcode}} {{city}}",
    # Dutch Provinces, not usually part of address
    # in The Netherlands.
    provinces = c(
      "Drenthe",
      "Flevoland",
      "Friesland",
      "Gelderland",
      "Groningen",
      "Limburg",
      "Noord-Brabant",
      "Noord-Holland",
      "Overijssel",
      "Utrecht",
      "Zeeland",
      "Zuid-Holland"
    ),
    locale_ = "nl_NL"
  )
)
