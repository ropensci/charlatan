#' Create fake person names
#'
#' @export
#' @examples
#' ch_name()
#' replicate(10, ch_name())
#' replicate(500, ch_name())
ch_name <- function() {
  PersonProvider$new()$render()
}
