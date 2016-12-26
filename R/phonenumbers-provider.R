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
#' @keywords internal
#' @examples \donttest{
#' z <- PhoneNumberProvider$new()
#' z$render()
#' }
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
