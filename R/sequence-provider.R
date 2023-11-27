#' @title SequenceProvider
#' @description genetic sequence generator
#' @export
#' @examples
#' z <- SequenceProvider$new()
#' z$render()
#' z$render(10)
#' z$render(100)
#' # or even z$render(500)
SequenceProvider <- R6::R6Class(
  "SequenceProvider",
  inherit = BareProvider,
  public = list(
    #' @description Make a sequence
    #' @param length (integer) length of sequence to create. default: 30
    render = function(length = 30) {
      paste0(sample(private$letters, size = length, replace = TRUE),
        collapse = ""
      )
    }
  ),
  private = list(
    provider_ = "SequenceProvider",
    # nucleotides to include in sequences
    letters = c("C", "G", "A", "T", "N")
  )
)
