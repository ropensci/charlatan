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
    #' @field letters (character) nucleotides to include in sequences
    letters = c("C", "G", "A", "T", "N"),

    #' @description Make a sequence
    #' @param length (integer) length of sequence to create. default: 30
    render = function(length = 30) {
      paste0(sample(self$letters, size = length, replace = TRUE),
        collapse = "")
    }
  )
)
