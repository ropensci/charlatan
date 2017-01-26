#' CoordinateProvider
#'
#' @keywords internal
#' @examples \donttest{
#' z <- CoordinateProvider$new()
#' z$lon()
#' z$lat()
#' z$position()
#' z$position(bbox = c(-120, 30, -110, 60))
#' }
CoordinateProvider <- R6::R6Class(
  'CoordinateProvider',
  public = list(
    rnd = function() stats::runif(1) - 0.5,
    lon = function() self$rnd() * 360,
    lat = function() self$rnd() * 180,

    position = function(bbox = NULL) {
      if (!is.null(bbox)) {
        private$coord_in_bbbox(bbox)
      } else {
        c(self$lon(), self$lat())
      }
    }
  ),

  private = list(
    coord_in_bbbox = function(bbox) {
      c(
        (stats::runif(1) * (bbox[3] - bbox[1])) + bbox[1],
        (stats::runif(1) * (bbox[4] - bbox[2])) + bbox[2]
      )
    }
  )
)

