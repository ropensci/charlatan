# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/address/nl_nl/__init__.py

AddressProvider_nl_NL <- R6::R6Class(
  inherit = AddressProvider,
  "AddressProvider_nl_NL",
  lock_objects = FALSE,
  public = list(
    # add your data here
    city_prefixes = c(
      "Veen", "U", "Amster", "Heeren", "Ooster", "Nieuw", "Amers", "Maas", "Kaas",
      "Pieters", "Jans", "Groonen", "E", "Rhenen", "Eind", "Swellen", "Kroon",
      "Uiten", "Boter", "Bloem", "Jagers", "Klerks", "Rusten", "Oudt", "Oud", "Veld"
    ),
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
      "rus",
      "fontein",
      "park",
      "dorp",
      "hoorn",
      "bos",
      "bosch",
      "veld"
    ),
    building_number_formats = c("#", "##", "###"),
    street_suffixes = c(
      "kade",
      "straat",
      "laan",
      "hof",
      "weg",
      "steeg"
    ),
    postcode_formats = c("####"),
    city_formats = c(
      "{{city_prefix}}{{city_suffix}}",
      "{{first_name}}{{city_suffix}}"
    ),
    street_name_formats = c(
      "{{first_name}}{{street_suffix}}",
      "{{last_name}}{{street_suffix}}"
    ),
    street_address_formats = c(
      "{{street_name}} {{building_number}}"
    ),
    address_formats = "{{street_address}}\n{{postcode}} {{city}}",
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

    # Fill in these functions
    #' @description address
    address = function() {
      pattern <- super$random_element(self$address_formats)
      dat <- list(
        street_address = self$street_address(),
        city = self$city(),
        postcode = self$postcode()
      )
      whisker::whisker.render(pattern, data = dat)
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
      toupper(super$bothify(super$random_element(self$postcode_formats)))
    },
    building_number = function() {
      super$numerify(super$random_element(self$building_number_formats))
    },
    province = function() {
      super$random_element(self$provinces)
    }
  )
)
