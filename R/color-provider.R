#' @title ColorProvider
#' @description methods for colors
#' create color names, hex values, rgb values
#' or css values.
#' @family ParentProviders
#' @return A ColorProvider object that can generate
#' colors.
ColorProvider <- R6::R6Class(
  inherit = BaseProvider,
  "ColorProvider",
  public = list(
    #' @description color name
    color_name = function() {
      super$random_element(names(private$all_colors_))
    },
    #' @description get color by name
    #' @param name color name
    #' @return hex value
    hex_from_name = function(name) {
      private$all_colors[name]
    },
    #' @description safe color name
    safe_color_name = function() {
      super$random_element(private$safe_colors_)
    },

    #' @description hex color
    hex_color = function() {
      grDevices::rgb(private$sample_col(), private$sample_col(),
        private$sample_col(),
        maxColorValue = 255
      )
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
  active = list(
    all_colors = function() {
      private$all_colors_
    },
    safe_colors = function() {
      private$safe_colors_
    }
  ),
  private = list(
    provider_ = "ColorProvider",
    ind = function(x, y) {
      substring(x, y, y)
    },
    rgb_color_list = function() {
      color <- self$rgb_color()
      sprintf("(%s)", paste0(color, collapse = ", "))
    },
    sample_col = function() sample(0:255, 1),
    #' @field all_colors (character) xxx
    all_colors_ = NULL,
    #' @field safe_colors (character) xxx
    safe_colors_ = NULL,
    locales = c("uk_UA", "en_US")
  )
)
