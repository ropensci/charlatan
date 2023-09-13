#' Create fake gene sequences
#'
#' @export
#' @template params
#' @param length (integer) length of sequence to create
#' @seealso [SequenceProvider]
#' @examples
#' ch_gene_sequence()
#' ch_gene_sequence(10)
#' ch_gene_sequence(100)
#'
#' ch_gene_sequence(length = 500)
#' ch_gene_sequence(10, length = 500)
ch_gene_sequence <- function(n = 1, length = 30) {
  assert(n, c("integer", "numeric"))
  assert(length, c("integer", "numeric"))
  if (n == 1) {
    SequenceProvider$new()$render(length)
  } else {
    x <- SequenceProvider$new()
    replicate(n, x$render(length))
  }
}
