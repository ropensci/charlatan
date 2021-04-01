#' @title SequenceProvider
#' @description genetic sequence generator
#' @export
#' @keywords internal
#' @examples
#' z <- SequenceProvider$new()
#' z$render()
#' z$render(10)
#' z$render(100)
#' z$render(500)
SequenceProvider <- R6::R6Class(
  'SequenceProvider',
  public = list(
    #' @description Make a sequence
    #' @param length (integer) length of sequence to create. default: 30
    render = function(length = 30, letters = c("C", "G", "A", "T", "N")) {
      paste0(sample(letters, size = length, replace = TRUE),
        collapse = "")
    }
  )
)
