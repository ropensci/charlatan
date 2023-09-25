# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/address/en_US/__init__.py

#' AddressProvider for United States of America
#'
#' @inherit AddressProvider description details return
#' @export
#' @examples
#' (z <- AddressProvider_en_US$new())
#' z$locale
#' z$postcode()
#' z$street_name()
#' z$address()
#' z$city()
#' z$mil_address()
#' z$civ_address()
AddressProvider_en_US <- R6::R6Class(
  inherit = AddressProvider,
  "AddressProvider_en_US",
  lock_objects = FALSE,
  public = list(
    #' @description address
    address = function() {
      # faker python library has 25 civ addresses, and 3 military addresses
      draw <- sample(1:28, 1)
      if (draw >= 26) {
        self$mil_address()
      } else {
        self$civ_address()
      }
    },

    #' @description civilian address, the type of address you would expect. Not to be confused with Military address which is also available for this locale.
    civ_address = function() {
      pattern <- super$random_element(private$address_formats)
      dat <- list(
        street_address = self$street_address(),
        city = self$city(),
        state_abbr = super$random_element(private$states_abbr),
        postcode = self$postcode()
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description Military address
    mil_address = function() {
      pattern <- super$random_element(private$mil_address_formats)
      dat <- list(
        military_state = super$random_element(private$military_state_abbr),
        military_apo = super$numerify(super$random_element(private$military_apo_format)),
        military_ship = super$random_element(private$military_ship_prefix),
        military_dpo = super$numerify(super$random_element(private$military_dpo_format)),
        last_name = self$pp$last_name(),
        postcode = self$postcode()
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description city
    city = function() {
      pattern <- super$random_element(private$city_formats)

      dat <- list(
        first_name = self$pp$first_name(),
        last_name = self$pp$last_name(),
        city_prefix = super$random_element(private$city_prefixes),
        city_suffix = super$random_element(private$city_suffixes)
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description street name
    street_name = function() {
      pattern <- super$random_element(private$street_name_formats)
      dat <- list(
        first_name = self$pp$first_name(),
        last_name = self$pp$last_name(),
        street_suffix = super$random_element(private$street_suffixes)
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description street address
    street_address = function() {
      pattern <- super$random_element(private$street_address_formats)
      dat <- list(
        building_number = self$building_number(),
        street_name = self$street_name(),
        secondary_address = super$bothify(super$random_element(private$secondary_address_formats))
      )
      whisker::whisker.render(pattern, data = dat)
    },
    #' @description postal code
    postcode = function() {
      toupper(super$bothify(super$random_element(private$postcode_formats)))
    },
    #' @description building number
    building_number = function() {
      super$numerify(super$random_element(private$building_number_formats))
    },
    #' @description state
    state = function() {
      super$random_element(private$states)
    }
  ),
  private = list(
    # Prefixes for cities.
    # Combining suffix and prefix makes a random city.
    city_prefixes = c("North", "East", "West", "South", "New", "Lake", "Port"),
    # Suffixes for cities.
    # Combining suffix and prefix makes a random city.
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
    # Formats for building numbers
    building_number_formats = c("#####", "####", "###"),

    # combined with street prefix creates a street.
    street_suffixes = c(
      "Alley",
      "Avenue",
      "Branch",
      "Bridge",
      "Brook",
      "Brooks",
      "Burg",
      "Burgs",
      "Bypass",
      "Camp",
      "Canyon",
      "Cape",
      "Causeway",
      "Center",
      "Centers",
      "Circle",
      "Circles",
      "Cliff",
      "Cliffs",
      "Club",
      "Common",
      "Corner",
      "Corners",
      "Course",
      "Court",
      "Courts",
      "Cove",
      "Coves",
      "Creek",
      "Crescent",
      "Crest",
      "Crossing",
      "Crossroad",
      "Curve",
      "Dale",
      "Dam",
      "Divide",
      "Drive",
      "Drives",
      "Estate",
      "Estates",
      "Expressway",
      "Extension",
      "Extensions",
      "Fall",
      "Falls",
      "Ferry",
      "Field",
      "Fields",
      "Flat",
      "Flats",
      "Ford",
      "Fords",
      "Forest",
      "Forge",
      "Forges",
      "Fork",
      "Forks",
      "Fort",
      "Freeway",
      "Garden",
      "Gardens",
      "Gateway",
      "Glen",
      "Glens",
      "Green",
      "Greens",
      "Grove",
      "Groves",
      "Harbor",
      "Harbors",
      "Haven",
      "Heights",
      "Highway",
      "Hill",
      "Hills",
      "Hollow",
      "Inlet",
      "Island",
      "Islands",
      "Isle",
      "Junction",
      "Junctions",
      "Key",
      "Keys",
      "Knoll",
      "Knolls",
      "Lake",
      "Lakes",
      "Land",
      "Landing",
      "Lane",
      "Light",
      "Lights",
      "Loaf",
      "Lock",
      "Locks",
      "Lodge",
      "Loop",
      "Mall",
      "Manor",
      "Manors",
      "Meadow",
      "Meadows",
      "Mews",
      "Mill",
      "Mills",
      "Mission",
      "Motorway",
      "Mount",
      "Mountain",
      "Mountains",
      "Neck",
      "Orchard",
      "Oval",
      "Overpass",
      "Park",
      "Parks",
      "Parkway",
      "Parkways",
      "Pass",
      "Passage",
      "Path",
      "Pike",
      "Pine",
      "Pines",
      "Place",
      "Plain",
      "Plains",
      "Plaza",
      "Point",
      "Points",
      "Port",
      "Ports",
      "Prairie",
      "Radial",
      "Ramp",
      "Ranch",
      "Rapid",
      "Rapids",
      "Rest",
      "Ridge",
      "Ridges",
      "River",
      "Road",
      "Roads",
      "Route",
      "Row",
      "Rue",
      "Run",
      "Shoal",
      "Shoals",
      "Shore",
      "Shores",
      "Skyway",
      "Spring",
      "Springs",
      "Spur",
      "Spurs",
      "Square",
      "Squares",
      "Station",
      "Stravenue",
      "Stream",
      "Street",
      "Streets",
      "Summit",
      "Terrace",
      "Throughway",
      "Trace",
      "Track",
      "Trafficway",
      "Trail",
      "Tunnel",
      "Turnpike",
      "Underpass",
      "Union",
      "Unions",
      "Valley",
      "Valleys",
      "Via",
      "Viaduct",
      "View",
      "Views",
      "Village",
      "Villages",
      "Ville",
      "Vista",
      "Walk",
      "Walks",
      "Wall",
      "Way",
      "Ways",
      "Well",
      "Wells"
    ),
    # Formats for postal codes
    postcode_formats = c("#####", "#####-####"),
    # States in the USA
    states = c(
      "Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado",
      "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho",
      "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana",
      "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota",
      "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada",
      "New Hampshire", "New Jersey", "New Mexico", "New York",
      "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon",
      "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota",
      "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington",
      "West Virginia", "Wisconsin", "Wyoming"
    ),
    # States in the USA, abbreviation.
    states_abbr = c(
      "AL", "AK", "AS", "AZ", "AR", "CA", "CO", "CT", "DE", "DC", "FM", "FL",
      "GA", "GU", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MH",
      "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM",
      "NY", "NC", "ND", "MP", "OH", "OK", "OR", "PW", "PA", "PR", "RI", "SC",
      "SD", "TN", "TX", "UT", "VT", "VI", "VA", "WA", "WV", "WI", "WY"
    ),
    # States in the USA, military.
    military_state_abbr = c("AE", "AA", "AP"),
    # Ship abbreviations
    military_ship_prefix = c("USS", "USNS", "USNV", "USCGC"),
    # (apo) PO box format (military)
    military_apo_format = c("PSC ####, Box ####"),
    # (dpo) PO box format (military)
    military_dpo_format = c("Unit #### Box ####"),
    #  formats for creating a city name.
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
      "{{building_number}} {{street_name}} {{secondary_address}}"
    ),
    # formats for creating an address.
    address_formats = c(
      "{{street_address}}\n{{city}}, {{state_abbr}} {{postcode}}"
    ),
    # formats for military addresses in the USA.
    mil_address_formats = c(
      "{{military_apo}}\nAPO {{military_state}} {{postcode}}",
      "{{military_ship}} {{last_name}}\nFPO {{military_state}} {{postcode}}",
      "{{military_dpo}}\nDPO {{military_state}} {{postcode}}"
    ),
    # formats for creating secondary parts of
    # addresses.
    secondary_address_formats = c("Apt. ###", "Suite ###"),
    locale_ = "en_US"
  )
)
