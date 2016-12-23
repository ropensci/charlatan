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
#' z$random_format()
#' z$render()
#' }
PhoneNumberProvider <- R6::R6Class(
  inherit = BaseProvider,
  'PhoneNumberProvider',
  public = list(
    formats = phone_number_formats,

    random_format = function() {
      sample(self$formats, size = 1)
    },

    render = function() {
      super$numerify(text = self$random_format())
    }
  )
)
