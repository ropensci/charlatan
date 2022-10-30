# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/address/en_GB/__init__.py
AddressProvider_en_GB <- R6::R6Class(
  inherit = AddressProvider,
  "AddressProvider_en_GB",
  lock_objects = FALSE,
  public = list(
    # add your data here
    city_prefixes = c("North", "East", "West", "South", "New", "Lake", "Port"),
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
    building_number_formats = c("#", "##", "###"),
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
    city_formats = c(
      "{{city_prefix}} {{first_name}}{{city_suffix}}",
      "{{city_prefix}} {{first_name}}",
      "{{first_name}}{{city_suffix}}",
      "{{last_name}}{{city_suffix}}"
    ),
    street_name_formats = c(
      "{{first_name}} {{street_suffix}}",
      "{{last_name}} {{street_suffix}}"
    ),
    street_address_formats = c(
      "{{building_number}} {{street_name}}",
      "{{secondary_address}}\n{{street_name}}"
    ),
    address_formats = "{{street_address}}\n{{city}}\n{{postcode}}",
    secondary_address_formats = c(
      "Flat #", "Flat ##", "Flat ##?",
      "Studio #", "Studio ##", "Studio ##?"
    ),
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
      pcode <- ""
      pattern <- super$random_element(self$postcode_formats)
      pattern <- strsplit(pattern, split = "")[[1]]
      for (p in pattern) {
        pcode <- paste0(
          pcode,
          super$random_element(self$postcode_sets[[p]])
        )
      }
      pcode
    },
    building_number = function() {
      super$numerify(super$random_element(self$building_number_formats))
    }
  )
)
