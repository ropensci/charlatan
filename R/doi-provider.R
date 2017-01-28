#' DOIProvider
#'
#' @export
#' @keywords internal
#' @details
#' \strong{Methods}
#'   \describe{
#'     \item{\code{render()}}{
#'       Make a DOI
#'     }
#'   }
#' @format NULL
#' @usage NULL
#' @examples
#' z <- DOIProvider$new()
#' z$render()
DOIProvider <- R6::R6Class(
  'DOIProvider',
  inherit = BaseProvider,
  public = list(
    funs = list(
      a = function() {
        formats <- c("10.%s/%s-%s-%s", "10.%s/%s.%s.%s")
        sprintf(
          sample(formats, 1),
          floor(runif(1, 100, 99999)),
          floor(runif(1, 100, 99999)),
          floor(runif(1, 100, 99999)),
          floor(runif(1, 100, 9999))
        )
      },
      b = function() {
        formats <- "10.%s/%s.%s"
        sprintf(
          sample(formats, 1),
          floor(runif(1, 100, 99999)),
          paste0(sample(letters, 4), collapse = ""),
          floor(runif(1, 100, 99999999L))
        )
      }
    ),

    render = function() {
      x <- sample(length(self$funs), 1)
      self$funs[[x]]()
    }
  )
)
