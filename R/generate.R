#' Generate a fake dataset
#'
#' @export
#' @param ... columns to include. must be in the allowed set. See
#' \strong{Allowed colun names} below
#' @template params
#' @section Allowed column names:
#' \itemize{
#'  \item name (default included)
#'  \item job (default included)
#'  \item phone_number (default included)
#'  \item currency
#'  \item hex_color
#'  \item color_name
#'  \item rgb_color
#'  \item rgb_css_color
#' }
#' @examples
#' ch_generate()
#' ch_generate(n = 1)
#' ch_generate(n = 100)
#'
#' ch_generate('job')
#' ch_generate('job', 'name')
#' ch_generate('job', 'color_name')
ch_generate <- function(..., n = 10) {
  choices <- unlist(list(...))
  if (length(choices) == 0) choices <- c("name", "job", "phone_number")
  stopifnot(inherits(choices, "character"))

  if (!all(choices %in% all_choices)) {
    stop("column name must be selected from the following:\n  ",
         paste0(all_choices, collapse = "\n  "),
         call. = FALSE)
  }
  cols <- stats::setNames(
    lapply(choices, function(z) {
      eval(parse(text = paste0("ch_", z)))(n)
    }),
    choices
  )
  tibble::as_data_frame(cols)
}

all_choices <- c("name", "job", "phone_number", "currency",
                 "color_name", "rgb_color", "rgb_css_color")
