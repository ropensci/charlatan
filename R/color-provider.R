#' @title ColorProvider
#' @description methods for colors
#' @export
#' @keywords internal
#' @examples
#' x <- ColorProvider$new()
#' x$locale
#' x$color_name()
#' x$safe_color_name()
#' x$hex_color()
#' x$safe_hex_color()
#' x$rgb_color()
#' x$rgb_css_color()
#'
#' x <- ColorProvider$new(locale = "uk_UA")
#' x$locale
#' x$color_name()
#' x$safe_color_name()
ColorProvider <- R6::R6Class(
  inherit = BaseProvider,
  'ColorProvider',
  public = list(
    #' @field locale (character) xxx
    locale = NULL,
    #' @field all_colors (character) xxx
    all_colors = NULL,
    #' @field safe_colors (character) xxx
    safe_colors = NULL,

    #' @description Create a new `ColorProvider` object
    #' @param locale (character) the locale to use. See
    #' `color_provider_locales` for locales supported (default: en_US)
    #' @return A new `ColorProvider` object
    initialize = function(locale = NULL) {
      if (!is.null(locale)) {
        # check global locales
        super$check_locale(locale)
        # check person provider locales
        check_locale_(locale, color_provider_locales)
        self$locale <- locale
      } else {
        self$locale <- 'en_US'
      }
      self$all_colors <- parse_eval("all_colors_", self$locale)
      self$safe_colors <- parse_eval("safe_colors_", self$locale)
    },

    #' @description color name 
    color_name = function() {
      super$random_element(names(self$all_colors))
    },

    #' @description safe color name 
    safe_color_name = function() {
      super$random_element(self$safe_colors)
    },

    #' @description hex color
    hex_color = function() {
      grDevices::rgb(private$sample_col(), private$sample_col(),
                     private$sample_col(), maxColorValue = 255)
    },

    #' @description safe hex color
    safe_hex_color = function() {
      x <- sprintf(
        "%x%x%x",
        super$random_int(0, 5) * 3,
        super$random_int(0, 5) * 3,
        super$random_int(0, 5) * 3
      )
      paste0(
        "#",
        private$ind(x, 1), private$ind(x, 1),
        private$ind(x, 2), private$ind(x, 2),
        private$ind(x, 3), private$ind(x, 3),
        collapse = ""
      )
    },

    #' @description RGB color
    rgb_color = function() {
      as.vector(grDevices::col2rgb(self$hex_color()))
    },

    #' @description RGB CSS color
    rgb_css_color = function() {
      sprintf("rgb(%s)", paste0(self$rgb_color(), collapse = ", "))
    }
  ),

  private = list(
    ind = function(x, y) {
      substring(x, y, y)
    },

    rgb_color_list = function() {
      color <- self$rgb_color()
      sprintf("(%s)", paste0(color, collapse = ", "))
    },

    sample_col = function() sample(0:255, 1)

  )
)

#' @export
#' @noRd
#' @rdname ColorProvider
color_provider_locales <- c("uk_UA", "en_US")
