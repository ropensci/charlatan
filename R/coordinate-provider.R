#' CoordinateProvider
#'
#' @export
#' @keywords internal
#' @details
#' \strong{Methods}
#'   \describe{
#'     \item{\code{lat()}}{
#'       a latitude value
#'     }
#'     \item{\code{lon()}}{
#'       a longitude value
#'     }
#'     \item{\code{position()}}{
#'       a position, of form [longitude,latitude]
#'       \itemize{
#'        \item bbox: optionally, specify a bounding box for the position
#'        to be in, of the form [west,south,east,north]
#'       }
#'     }
#'   }
#' @format NULL
#' @usage NULL
#' @examples
#' z <- CoordinateProvider$new()
#' z$lon()
#' z$lat()
#' z$position()
#' z$position(bbox = c(-120, 30, -110, 60))
CoordinateProvider <- R6::R6Class(
  'CoordinateProvider',
  public = list(
    lon = function() private$rnd() * 360,
    lat = function() private$rnd() * 180,

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
      c(
        (stats::runif(1) * (bbox[3] - bbox[1])) + bbox[1],
        (stats::runif(1) * (bbox[4] - bbox[2])) + bbox[2]
      )
    }
  )
)

