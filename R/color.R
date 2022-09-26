#' Create fake colors
#'
#' @export
#' @name ch_color
#' @template params
#' @param locale (character) the locale to use. See
#' `colors()$allowed_locales()` for locales supported.
#' Affects the `ch_color_name` and `ch_safe_color_name` functions
#' @seealso [ColorProvider]
#' @examples
#' ch_color_name()
#' ch_color_name(10)
#' ch_color_name(500)
#'
#' ch_safe_color_name()
#' ch_safe_color_name(10)
#'
#' ch_hex_color()
#' ch_hex_color(10)
#' ch_hex_color(1000)
#'
#' ch_safe_hex_color()
#' ch_safe_hex_color(10)
#'
#' ch_rgb_color()
#' ch_rgb_color(10)
#'
#' ch_rgb_css_color()
#' ch_rgb_css_color(10)
#'
#' ch_color_name(locale = "uk_UA")
#' ch_color_name(n = 10, locale = "uk_UA")
#'
#' ch_safe_color_name(locale = "uk_UA")
#' ch_safe_color_name(n = 10, locale = "uk_UA")
ch_color_name <- function(n = 1, locale = NULL) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    colors(locale = locale)$color_name()
  } else {
    x <- colors(locale = locale)
    rep_licate(n, x$color_name(), "")
  }
}

#' @export
#' @rdname ch_color
ch_safe_color_name <- function(n = 1, locale = NULL) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    colors(locale = locale)$safe_color_name()
  } else {
    x <- colors(locale = locale)
    rep_licate(n, x$safe_color_name(), "")
  }
}

#' @export
#' @rdname ch_color
ch_hex_color <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    colors()$hex_color()
  } else {
    x <- colors()
    rep_licate(n, x$hex_color(), "")
  }
}

#' @export
#' @rdname ch_color
ch_safe_hex_color <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    colors()$safe_hex_color()
  } else {
    x <- colors()
    rep_licate(n, x$safe_hex_color(), "")
  }
}

#' @export
#' @rdname ch_color
ch_rgb_color <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  x <- colors()
  replicate(n, x$rgb_color(), simplify = FALSE)
}

#' @export
#' @rdname ch_color
ch_rgb_css_color <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    colors()$rgb_css_color()
  } else {
    x <- colors()
    rep_licate(n, x$rgb_css_color(), "")
  }
}
