#' Create fake person names
#'
#' @export
#' @template params
#' @examples
#' ch_name()
#' ch_names(10)
#' ch_names(500)
ch_name <- function() {
  PersonProvider$new()$render()
}

#' @export
#' @rdname ch_name
ch_names <- function(n = 10) {
  x <- PersonProvider$new()
  replicate(n, x$render())
}
