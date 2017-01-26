#' SequenceProvider
#'
#' @keywords internal
#' @param length (integer) length of sequence to create
#' @examples
#' z <- SequenceProvider$new()
#' z$render()
#' z$render(10)
#' z$render(100)
#' z$render(500)
SequenceProvider <- R6::R6Class(
  'SequenceProvider',
  public = list(
    letters = c("C", "G", "A", "T", "N"),

    render = function(length = 30) {
      paste0(sample(self$letters, size = length, replace = TRUE), collapse = "")
    }
  )
)
