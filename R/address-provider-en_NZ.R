# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/address/en_NZ/__init__.py

#' AddressProvider for New-Zealand
#'
#' @inherit AddressProvider description details return
#' @export
#' @family en
#' @family NZ
#' @examples
#' (z <- AddressProvider_en_NZ$new())
#' z$postcode()
#' z$street_name()
#' z$address()
#' z$city()
AddressProvider_en_NZ <- R6::R6Class(
  inherit = AddressProvider,
  "AddressProvider_en_NZ",
  lock_objects = FALSE,
  public = list(

    # Fill in these functions
    #' @description Create an address, a combination of street, postal code and city.
    address = function() {
      pattern <- super$random_element(private$address_formats)
      dat <- list(
        street_address = self$street_address(),
        postcode = self$postcode(),
        city = self$city()
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description Create a city
    city = function() {
      pattern <- super$random_element(private$city_formats)
      dat <- list(
        # , , te_reo_first, te_reo_ending, te_reo_part

        first_name = private$pp$first_name(),
        last_name = private$pp$last_name(),
        city_suffix = super$random_element(private$street_suffixes),
        city_prefix = super$random_element(private$city_prefixes),
        te_reo_first = super$random_element(private$te_reo_first),
        te_reo_ending = super$random_element(private$te_reo_ending),
        te_reo_part = super$random_element(private$te_reo_parts)
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description Create a street name
    street_name = function() {
      pattern <- super$random_element(private$street_name_formats)
      dat <- list(
        first_name = private$pp$first_name(),
        last_name = private$pp$last_name(),
        street_suffix = super$random_element(private$street_suffixes),
        te_reo_first = super$random_element(private$te_reo_first),
        te_reo_ending = super$random_element(private$te_reo_ending),
        re_reo_part = super$random_element(private$re_reo_parts)
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description Create a street address , a combination of streetname and house indicator.
    street_address = function() {
      pattern <- super$random_element(private$street_address_formats)
      number_format <- super$random_element(private$building_number_formats)
      secondary_address_format <- super$random_element(private$secondary_address_formats)
      dat <- list(
        # building_number, street_name, rd_number, secondary_address
        building_number = super$bothify(number_format),
        street_name = self$street_name(),
        rd_number = sample(1:11, 1),
        secondary_address = super$bothify(secondary_address_format)
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description Create a postal code
    postcode = function() {
      pattern <- super$random_element(private$postcode_formats)
      super$numerify(pattern)
    }
  ),
  private = list(
    # add your data here
    # Prefixes for cities.
    # Combining suffix and prefix makes a random city.
    city_prefixes = c(
      "North",
      "East",
      "West",
      "South",
      "New",
      "Lake",
      "Port",
      "Upper",
      "Lower",
      "High",
      "Mount"
    ),
    # Suffixes for cities.
    # Combining suffix and prefix makes a random city.
    city_suffixes = c(
      "town", "ton", "land", "ville", "berg", "burgh",
      "borough", "bury", "burn", "ing", "port", "mouth", "stone", "ings",
      "mouth", "fort", "haven", "leigh", "side", "gate", "neath", "side",
      " Flats", " Hill"
    ),
    # Formats for building numbers
    building_number_formats = c("%##", "%#", "%"),
    # combined with street prefix creates a street.
    street_suffixes = c(
      # Most common:
      "Arcade", "Arcade", "Arcade",
      "Avenue", "Avenue", "Avenue", "Avenue",
      "Avenue", "Avenue", "Avenue", "Avenue",
      "Beach Road", "Beach Road", "Beach Road", "Beach Road",
      "Crescent", "Crescent", "Crescent", "Crescent", "Crescent",
      "Drive", "Drive", "Drive", "Drive",
      "Mews", "Mews", "Mews",
      "Place", "Place", "Place", "Place",
      "Range Road", "Range Road",
      "Road", "Road", "Road", "Road", "Road", "Road", "Road", "Road", "Road",
      "Street", "Street", "Street", "Street", "Street", "Street", "Street",
      "Street", "Street", "Street", "Street", "Street", "Street", "Street",
      "Street", "Street", "Street", "Street", "Street", "Street", "Street",
      "Terrace", "Terrace", "Terrace",
      "Way", "Way", "Way",

      # Other:
      "Access", "Alley", "Alleyway", "Amble", "Anchorage", "Approach",
      "Broadway", "Bypass", "Causeway", "Centre",
      "Circle", "Circuit", "Close", "Concourse", "Copse", "Corner", "Court",
      "Cove",
      "Crest", "Cross", "Crossing",
      "Cutting",
      "Esplanade",
      "Flats",
      "Gardens", "Grove", "Heights", "Highway",
      "Lane", "Line", "Keys",
      "Parade", "Park", "Pass",
      "Plaza",
      "Point", "Quay",
      "Reserve",
      "Ridge",
      "Rise",
      "Square",
      "Track", "Trail",
      "View"
    ),

    # Māori nouns commonly present in placenames.
    te_reo_part = c(
      "ara",
      "awa",
      "horo",
      "kawa",
      "koro",
      "kowhai",
      "manawa",
      "mata",
      "maunga",
      "moko",
      "motu",
      "ngauru",
      "pa",
      "papa",
      "po",
      "puke",
      "rangi",
      "rohe",
      "rongo",
      "roto",
      "tahi",
      "tai",
      "tangi",
      "tau",
      "tere",
      "tipu",
      "wai",
      "waka",
      "whaka",
      "whanga",
      "whare",
      "weka"
    ),
    # Māori endings (usually adjectives) commonly present in placenames.
    te_reo_ending = c(
      "ara",
      "awa",
      "horo",
      "kawa",
      "koro",
      "kowhai",
      "manawa",
      "mata",
      "maunga",
      "moko",
      "motu",
      "ngauru",
      "pa",
      "papa",
      "po",
      "puke",
      "rangi",
      "rohe",
      "rongo",
      "roto",
      "tahi",
      "tai",
      "tangi",
      "tau",
      "tere",
      "tipu",
      "wai",
      "waka",
      "whaka",
      "whanga",
      "whare",
      "weka",
      "hanga",
      "hope",
      "iti",
      "iti",
      "kiwi",
      "makau",
      "nui",
      "nui",
      "nui",
      "nuku",
      "roa",
      "rua",
      "tanga",
      "tapu",
      "toa",
      "whenua",
      "whero",
      "whitu"
    ),
    # Maori first part
    te_reo_first = c(
      "Ara",
      "Awa",
      "Horo",
      "Kawa",
      "Koro",
      "Kowhai",
      "Manawa",
      "Mata",
      "Maunga",
      "Moko",
      "Motu",
      "Ngauru",
      "Pa",
      "Papa",
      "Po",
      "Puke",
      "Rangi",
      "Rohe",
      "Rongo",
      "Roto",
      "Tahi",
      "Tai",
      "Tangi",
      "Tau",
      "Tere",
      "Tipu",
      "Wai",
      "Waka",
      "Whaka",
      "Whanga",
      "Whare",
      "Weka"
    ),
    # Formats for postal codes
    postcode_formats = c(
      # as per https://en.wikipedia.org/wiki/Postcodes_in_New_Zealand
      # Northland
      "0%##",
      # Auckland
      "1###",
      "20##",
      "21##",
      "22##",
      "23##",
      "24##",
      "25##",
      "26##",
      # Central North Island
      "3###",
      "4###",
      # Lower North Island
      "50##",
      "51##",
      "52##",
      "53##",
      "55##",
      "57##",
      "58##",
      # Wellington
      "60##",
      "61##",
      "62##",
      "64##",
      "69##",
      # Upper South Island
      "7###",
      # Christchurch
      "80##",
      "81##",
      "82##",
      "84##",
      "85##",
      "86##",
      "88##",
      "89##",
      # Southland
      "90##",
      "92##",
      "93##",
      "94##",
      "95##",
      "96##",
      "97##",
      "98##"
    ),
    # formats for creating a city name.
    city_formats = c(
      "{{city_prefix}}{{city_suffix}}",
      "{{first_name}}{{city_suffix}}",
      "{{last_name}}{{city_suffix}}",
      "{{last_name}}{{city_suffix}}",
      "{{last_name}}{{city_suffix}}",
      "{{last_name}}{{city_suffix}}",
      "{{last_name}}{{city_suffix}}",
      "{{city_prefix}} {{last_name}}{{city_suffix}}",
      "{{te_reo_first}}{{te_reo_ending}}",
      "{{te_reo_first}}{{te_reo_ending}}",
      "{{te_reo_first}}{{te_reo_ending}}",
      "{{te_reo_first}}{{te_reo_ending}}",
      "{{te_reo_first}}{{te_reo_part}}{{te_reo_ending}}",
      "{{te_reo_first}}{{te_reo_part}}{{te_reo_ending}}"
    ),
    # formats for creating a street name.
    street_name_formats = c(
      "{{first_name}} {{street_suffix}}",
      "{{last_name}} {{street_suffix}}",
      "{{last_name}} {{street_suffix}}",
      "{{last_name}} {{street_suffix}}",
      "{{last_name}}-{{last_name}} {{street_suffix}}",
      "{{te_reo_first}}{{te_reo_ending}} {{street_suffix}}",
      "{{te_reo_first}}{{te_reo_ending}} {{street_suffix}}",
      "{{te_reo_first}}{{te_reo_part}}{{te_reo_ending}} {{street_suffix}}"
    ),
    # formats for creating a street address.
    street_address_formats = c(
      "{{building_number}} {{street_name}}",
      "{{building_number}} {{street_name}}",
      "{{building_number}} {{street_name}}",
      "{{building_number}} {{street_name}}\nRD {{rd_number}}",
      "{{secondary_address}}\n{{building_number}} {{street_name}}",
      "PO Box {{building_number}}"
    ),
    # formats for creating an address.
    address_formats = "{{street_address}}\n{{city}} {{postcode}}",
    # formats for creating secondary parts of
    # addresses.
    secondary_address_formats = c(
      "Apt. %##",
      "Flat %#",
      "Suite %##",
      "Unit %#",
      "Level %"
    ),
    locale_ = "en_NZ"
  )
)
