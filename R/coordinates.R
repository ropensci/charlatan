#' Create fake coordinates
#'
#' @export
#' @name coordinates
#' @template params
#' @param bbox a bounding box of the form [w,s,e,n]
#' @examples
#' ch_lon()
#' ch_lon(10)
#'
#' ch_lat()
#' ch_lat(10)
#'
#' ch_position()
#' ch_position(10)
ch_lon <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    CoordinateProvider$new()$lon()
  } else {
    x <- CoordinateProvider$new()
    replicate(n, x$lon())
  }
}

#' @export
#' @rdname coordinates
ch_lat <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    CoordinateProvider$new()$lat()
  } else {
    x <- CoordinateProvider$new()
    replicate(n, x$lat())
  }
}

#' @export
#' @rdname coordinates
ch_position <- function(n = 1, bbox = NULL) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    CoordinateProvider$new()$position(bbox)
  } else {
    x <- CoordinateProvider$new()
    replicate(n, x$position(bbox), FALSE)
  }
}
