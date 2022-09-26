#' colors
#' @export
#' @examples
#' x <- colors('en_US')
#' x
#' x$locale
#' x$color_name()
#' x$safe_color_name()
#' x$hex_color()
#' x$safe_hex_color()
#' x$rgb_color()
#' x$rgb_css_color()
colors <- function(locale=NULL){
    # TODO: probably warn that this overrides the grDevices::colors() function
    if (is.null(locale)) return(ColorProvider_en_US$new("en_US"))
    eval(parse(text=paste0("ColorProvider", "_", locale)))$new(locale)
}

#' @title ColorProvider
#' @description methods for colors
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

    #' @description fetch the allowed locales for this provider
    allowed_locales = function() private$locales,

    #' @description Create a new `ColorProvider` object
    #' @param locale (character) the locale to use. See
    #' `$allowed_locales()` for locales supported (default: en_US)
    #' @return A new `ColorProvider` object
    initialize = function(locale=NULL) {
            if (!is.null(locale)) {
                # check global locales
                super$check_locale(locale)
                # check address provider locales
                check_locale_(locale, private$locales)
                self$locale <- locale
            } else {
                stop(paste0(locale, " not in set of available locales"))
                
            }
            
        },

    #' @description color name 
    color_name = function() {
      super$random_element(names(self$all_colors))
    },
    #' @description get color by name
    hex_from_name = function(name){
        self$all_colors[name]
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

    sample_col = function() sample(0:255, 1),

    locales = c("uk_UA", "en_US")
  )
)
