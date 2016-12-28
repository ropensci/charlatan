#' Create fake colors
#'
#' @export
#' @name ch_color
#' @template params
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
#'
#' ch_safe_hex_color()
#' ch_safe_hex_color(10)
#'
#' ch_rgb_color()
#' ch_rgb_color(10)
#'
#' ch_rgb_css_color()
#' ch_rgb_css_color(10)
ch_color_name <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    ColorProvider$new()$color_name()
  } else {
    x <- ColorProvider$new()
    replicate(n, x$color_name())
  }
}

#' @export
#' @rdname ch_color
ch_safe_color_name <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    ColorProvider$new()$safe_color_name()
  } else {
    x <- ColorProvider$new()
    replicate(n, x$safe_color_name())
  }
}

#' @export
#' @rdname ch_color
ch_hex_color <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    ColorProvider$new()$hex_color()
  } else {
    x <- ColorProvider$new()
    replicate(n, x$hex_color())
  }
}

#' @export
#' @rdname ch_color
ch_safe_hex_color <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    ColorProvider$new()$safe_hex_color()
  } else {
    x <- ColorProvider$new()
    replicate(n, x$safe_hex_color())
  }
}

#' @export
#' @rdname ch_color
ch_rgb_color <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    ColorProvider$new()$rgb_color()
  } else {
    x <- ColorProvider$new()
    replicate(n, x$rgb_color())
  }
}

#' @export
#' @rdname ch_color
ch_rgb_css_color <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    ColorProvider$new()$rgb_css_color()
  } else {
    x <- ColorProvider$new()
    replicate(n, x$rgb_css_color())
  }
}
