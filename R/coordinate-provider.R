#' @title CoordinateProvider
#' @description coordinates methods
#' @export
#' @keywords internal
#' @examples
#' z <- CoordinateProvider$new()
#' z$lon()
#' z$lat()
#' z$position()
#' z$position(bbox = c(-120, 30, -110, 60))
CoordinateProvider <- R6::R6Class(
  'CoordinateProvider',
  public = list(
    #' @description a latitude value
    lon = function() private$rnd() * 360,
    #' @description a longitude value
    lat = function() private$rnd() * 180,
    #' @description a position, of form `[longitude,latitude]`
    #' @param bbox optionally, specify a bounding box for the position
    #' to be in, of the form `[west,south,east,north]` - checks that the
    #' bbox has valid values for lat and long
    position = function(bbox = NULL) {
      if (!is.null(bbox)) {
        private$coord_in_bbbox(bbox)
      } else {
        c(self$lon(), self$lat())
      }
    }
  ),

  private = list(
    rnd = function() stats::runif(1) - 0.5,

    coord_in_bbbox = function(bbox) {
      stopifnot(0 <= abs(bbox[1]) && abs(bbox[1]) <= 180)
      stopifnot(0 <= abs(bbox[3]) && abs(bbox[3]) <= 180)
      stopifnot(0 <= abs(bbox[2]) && abs(bbox[2]) <= 90)
      stopifnot(0 <= abs(bbox[4]) && abs(bbox[4]) <= 90)
      c(
        (stats::runif(1) * (bbox[3] - bbox[1])) + bbox[1],
        (stats::runif(1) * (bbox[4] - bbox[2])) + bbox[2]
      )
    }
  )
)
