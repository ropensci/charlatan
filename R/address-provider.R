#     def street_name(self):
#         """
#         :example 'Crist Parks'
#         """
#         pattern = self.random_element(self.street_name_formats)
#         return self.generator.parse(pattern)

#     def street_address(self):
#         """
#         :example '791 Crist Parks'
#         """
#         pattern = self.random_element(self.street_address_formats)
#         return self.generator.parse(pattern)

#     def address(self):
#         """
#         :example '791 Crist Parks, Sashabury, IL 86039-9874'
#         """
#         pattern = self.random_element(self.address_formats)
#         return self.generator.parse(pattern)

#     @classmethod
#     def latitude(cls):
#         # Latitude has a range of -90 to 90, so divide by two.
#         return cls.geo_coordinate() / 2

#     @classmethod
#     def longitude(cls):
#         return cls.geo_coordinate()


#' AddressProvider
#'
#' @include datetime-provider.R
#' @export
#' @keywords internal
#' @examples
#' (z <- AddressProvider$new())
#' z$city_suffix()
#' z$street_suffix()
#' z$building_number()
#' z$city()
#' z$country()
#' z$country_code()
#' z$postcode()
AddressProvider <- R6::R6Class(
  inherit = BaseProvider,
  'AddressProvider',
  public = list(
    city_suffixes = 'Ville',
    street_suffixes = 'Street',
    city_formats = '{{first_name}} {{city_suffix}}',
    street_name_formats = '{{last_name}} {{street_suffix}}',
    street_address_formats = '{{building_number}} {{street_name}}',
    address_formats = '{{street_address}} {{postcode}} {{city}}',
    building_number_formats = '##',
    postcode_formats = '#####',
    countries = vapply(DateTimeProvider$new()$countries, "[[", "", "name"),
    country_codes = vapply(DateTimeProvider$new()$countries, "[[", "", "code"),

    city_suffix = function() {
      super$random_element(self$city_suffixes)
    },

    street_suffix = function() {
      super$random_element(self$street_suffixes)
    },

    building_number = function() {
      super$numerify(super$random_element(self$building_number_formats))
    },

    city = function() {
      # TODO: FIXME - not sure how original version gets data
      pattern <- super$random_element(self$city_formats)
      dat <- list(first_name = "Heidi", city_suffix = self$city_suffixes)
      whisker::whisker.render(pattern, data = dat)
    },

    country = function() {
      super$random_element(self$countries)
    },

    country_code = function() {
      super$random_element(self$country_codes)
    },

    postcode = function() {
      toupper(super$bothify(super$random_element(self$postcode_formats)))
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
  )
)
