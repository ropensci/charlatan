# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/address/en_GB/__init__.py


#' @title AddressProvider for English, Great Britain
#' @inherit AddressProvider description details return
#' @family en
#' @family GB
#' @export
#' @examples
#' (z <- AddressProvider_en_GB$new())
#' z$locale
#' z$postcode()
#' z$street_name()
#' z$address()
#' z$city()
AddressProvider_en_GB <- R6::R6Class(
  inherit = AddressProvider,
  "AddressProvider_en_GB",
  lock_objects = FALSE,
  public = list(

    #' @description Create an address, a combination of street, postal code and city.
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
    #' @description Create a street name.
    street_name = function() {
      pattern <- super$random_element(private$street_name_formats)
      # PersonProvider must implement the same locales for this to work
      dat <- list(
        first_name = private$pp$first_name(),
        last_name = private$pp$last_name(),
        street_suffix = super$random_element(private$street_suffixes)
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description Create a street address, a combination of streetname and house indicator.
    street_address = function() {
      pattern <- super$random_element(private$street_address_formats)
      dat <- list(
        building_number = self$building_number(),
        street_name = self$street_name(),
        secondary_address = super$bothify(super$random_element(private$secondary_address_formats))
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description Create a postal code
    postcode = function() {
      pcode <- ""
      pattern <- super$random_element(private$postcode_formats)
      pattern <- strsplit(pattern, split = "")[[1]]
      for (p in pattern) {
        pcode <- paste0(
          pcode,
          super$random_element(private$postcode_sets[[p]])
        )
      }
      pcode
    },
    #' @description Create a building number
    building_number = function() {
      super$numerify(super$random_element(private$building_number_formats))
    }
  ),
  private = list(
    locale_ = "en_GB",

    # add your data here
    #  Prefixes for cities.
    # Combining suffix and prefix makes a random city.
    city_prefixes = c("North", "East", "West", "South", "New", "Lake", "Port"),
    # suffixes for cities.
    city_suffixes = c(
      "town",
      "ton",
      "land",
      "ville",
      "berg",
      "burgh",
      "borough",
      "bury",
      "view",
      "port",
      "mouth",
      "stad",
      "furt",
      "chester",
      "fort",
      "haven",
      "side",
      "shire"
    ),
    #  Formats for building numbers
    building_number_formats = c("#", "##", "###"),
    # combined with street prefix creates a street.
    street_suffixes = c(
      "alley",
      "avenue",
      "branch",
      "bridge",
      "brook",
      "brooks",
      "burg",
      "burgs",
      "bypass",
      "camp",
      "canyon",
      "cape",
      "causeway",
      "center",
      "centers",
      "circle",
      "circles",
      "cliff",
      "cliffs",
      "club",
      "common",
      "corner",
      "corners",
      "course",
      "court",
      "courts",
      "cove",
      "coves",
      "creek",
      "crescent",
      "crest",
      "crossing",
      "crossroad",
      "curve",
      "dale",
      "dam",
      "divide",
      "drive",
      "drives",
      "estate",
      "estates",
      "expressway",
      "extension",
      "extensions",
      "fall",
      "falls",
      "ferry",
      "field",
      "fields",
      "flat",
      "flats",
      "ford",
      "fords",
      "forest",
      "forge",
      "forges",
      "fork",
      "forks",
      "fort",
      "freeway",
      "garden",
      "gardens",
      "gateway",
      "glen",
      "glens",
      "green",
      "greens",
      "grove",
      "groves",
      "harbor",
      "harbors",
      "haven",
      "heights",
      "highway",
      "hill",
      "hills",
      "hollow",
      "inlet",
      "island",
      "islands",
      "isle",
      "junction",
      "junctions",
      "key",
      "keys",
      "knoll",
      "knolls",
      "lake",
      "lakes",
      "land",
      "landing",
      "lane",
      "light",
      "lights",
      "loaf",
      "lock",
      "locks",
      "lodge",
      "loop",
      "mall",
      "manor",
      "manors",
      "meadow",
      "meadows",
      "mews",
      "mill",
      "mills",
      "mission",
      "motorway",
      "mount",
      "mountain",
      "mountains",
      "neck",
      "orchard",
      "oval",
      "overpass",
      "park",
      "parks",
      "parkway",
      "parkways",
      "pass",
      "passage",
      "path",
      "pike",
      "pine",
      "pines",
      "place",
      "plain",
      "plains",
      "plaza",
      "point",
      "points",
      "port",
      "ports",
      "prairie",
      "radial",
      "ramp",
      "ranch",
      "rapid",
      "rapids",
      "rest",
      "ridge",
      "ridges",
      "river",
      "road",
      "roads",
      "route",
      "row",
      "rue",
      "run",
      "shoal",
      "shoals",
      "shore",
      "shores",
      "skyway",
      "spring",
      "springs",
      "spur",
      "spurs",
      "square",
      "squares",
      "station",
      "stravenue",
      "stream",
      "street",
      "streets",
      "summit",
      "terrace",
      "throughway",
      "trace",
      "track",
      "trafficway",
      "trail",
      "tunnel",
      "turnpike",
      "underpass",
      "union",
      "unions",
      "valley",
      "valleys",
      "via",
      "viaduct",
      "view",
      "views",
      "village",
      "villages",
      "ville",
      "vista",
      "walk",
      "walks",
      "wall",
      "way",
      "ways",
      "well",
      "wells"
    ),
    # Formats for postal codes
    postcode_formats = c(
      "AN NEE",
      "ANN NEE",
      "PN NEE",
      "PNN NEE",
      "ANC NEE",
      "PND NEE"
    ),
    # POSTAL_ZONES_ONE_CHAR = c("B", "E", "G", "L", "M", "N", "S", "W"),
    # POSTAL_ZONES_TWO_CHARS = c(
    #   "AB", "AL", "BA", "BB", "BD", "BH", "BL", "BN", "BR",
    #   "BS", "BT", "CA", "CB", "CF", "CH", "CM", "CO", "CR", "CT",
    #   "CV", "CW", "DA", "DD", "DE", "DG", "DH", "DL", "DN", "DT",
    #   "DY", "EC", "EH", "EN", "EX", "FK", "FY", "GL",
    #   "GY", "GU", "HA", "HD", "HG", "HP", "HR", "HS", "HU", "HX",
    #   "IG", "IM", "IP", "IV", "JE", "KA", "KT", "KW", "KY",
    #   "LA", "LD", "LE", "LL", "LN", "LS", "LU", "ME", "MK",
    #   "ML", "NE", "NG", "NN", "NP", "NR", "NW", "OL", "OX",
    #   "PA", "PE", "PH", "PL", "PO", "PR", "RG", "RH", "RM",
    #   "SA", "SE", "SG", "SK", "SL", "SM", "SN", "SO", "SP", "SR",
    #   "SS", "ST", "SW", "SY", "TA", "TD", "TF", "TN", "TQ", "TR",
    #   "TS", "TW", "UB", "WA", "WC", "WD", "WF", "WN", "WR",
    #   "WS", "WV", "YO", "ZE"
    # ),
    # Specifically for en_GB, postcodes
    # form specific combinations.
    postcode_sets = list(
      " " = " ",
      "N" = 0:9,
      "A" = c("B", "E", "G", "L", "M", "N", "S", "W"),
      "B" = strsplit("ABCDEFGHKLMNOPQRSTUVWXY", "")[[1]],
      "C" = strsplit("ABCDEFGHJKSTUW", "")[[1]],
      "D" = strsplit("ABEHMNPRVWXY", "")[[1]],
      "E" = strsplit("ABDEFGHJLNPQRSTUWXYZ", "")[[1]],
      "P" = c(
        "AB", "AL", "BA", "BB", "BD", "BH", "BL", "BN", "BR",
        "BS", "BT", "CA", "CB", "CF", "CH", "CM", "CO", "CR", "CT",
        "CV", "CW", "DA", "DD", "DE", "DG", "DH", "DL", "DN", "DT",
        "DY", "EC", "EH", "EN", "EX", "FK", "FY", "GL",
        "GY", "GU", "HA", "HD", "HG", "HP", "HR", "HS", "HU", "HX",
        "IG", "IM", "IP", "IV", "JE", "KA", "KT", "KW", "KY",
        "LA", "LD", "LE", "LL", "LN", "LS", "LU", "ME", "MK",
        "ML", "NE", "NG", "NN", "NP", "NR", "NW", "OL", "OX",
        "PA", "PE", "PH", "PL", "PO", "PR", "RG", "RH", "RM",
        "SA", "SE", "SG", "SK", "SL", "SM", "SN", "SO", "SP", "SR",
        "SS", "ST", "SW", "SY", "TA", "TD", "TF", "TN", "TQ", "TR",
        "TS", "TW", "UB", "WA", "WC", "WD", "WF", "WN", "WR",
        "WS", "WV", "YO", "ZE"
      )
    ),
    # formats for creating a city name.
    city_formats = c(
      "{{city_prefix}} {{first_name}}{{city_suffix}}",
      "{{city_prefix}} {{first_name}}",
      "{{first_name}}{{city_suffix}}",
      "{{last_name}}{{city_suffix}}"
    ),
    # formats for creating a street name.
    street_name_formats = c(
      "{{first_name}} {{street_suffix}}",
      "{{last_name}} {{street_suffix}}"
    ),
    # formats for creating a street address.
    street_address_formats = c(
      "{{building_number}} {{street_name}}",
      "{{secondary_address}}\n{{street_name}}"
    ),
    # formats for creating an address.
    address_formats = "{{street_address}}\n{{city}}\n{{postcode}}",
    # formats for creating secondary parts of
    # addresses.
    secondary_address_formats = c(
      "Flat #", "Flat ##", "Flat ##?",
      "Studio #", "Studio ##", "Studio ##?"
    )
  )
)
