#' @title ColorProvider template
#' @description methods for colors in locale (template)
#' @export
#' @keywords internal
#' @examples
#' x <- colors("template")
#' x$locale
#' x$color_name()
#' x$safe_color_name()
#' x$hex_color()
#' x$safe_hex_color()
#' x$rgb_color()
#' x$rgb_css_color()
ColorProvider_template <- R6::R6Class(
    inherit = ColorProvider,
    "ColorProvider_template",
    lock_objects = FALSE,
    public =list(
        # at a minimum fill in all_colors, and safe_colors.
        all_colors = c(
            list(colorname="#hexcode")
        ),
        safe_colors = c(
            'colorname',
            "colorname"
        )
        
    )
)
