# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/phone_number/__init__.py
# https://github.com/joke2k/faker/blob/master/faker/providers/phone_number/en_US/__init__.py

phone_number_formats = c(
  '+##(#)##########',
  '+##(#)##########',
  '0##########',
  '0##########',
  '###-###-####',
  '(###)###-####',
  '1-###-###-####',
  '###.###.####',
  '###-###-####',
  '(###)###-####',
  '1-###-###-####',
  '###.###.####',
  '###-###-####x###',
  '(###)###-####x###',
  '1-###-###-####x###',
  '###.###.####x###',
  '###-###-####x####',
  '(###)###-####x####',
  '1-###-###-####x####',
  '###.###.####x####',
  '###-###-####x#####',
  '(###)###-####x#####',
  '1-###-###-####x#####',
  '###.###.####x#####'
)

#' PhoneNumberProvider
#'
#' @export
#' @keywords internal
#' @examples
#' z <- PhoneNumberProvider$new()
#' z$render()
PhoneNumberProvider <- R6::R6Class(
  inherit = BaseProvider,
  'PhoneNumberProvider',
  public = list(
    formats = phone_number_formats,

    render = function() {
      super$numerify(text = super$random_element(self$formats))
    }
  )
)
