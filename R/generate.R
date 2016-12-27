#' Generate a fake dataset
#'
#' @export
#' @param ... columns to include. must be in the allowed set. See Details.
#' @param n (integer) number of things to get, 1 to inifinity
#' @section Allowed column names:
#' \itemize{
#'  \item name
#'  \item job
#'  \item phone_number
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
#' # ch_generate('job', 'color_name', 'stuff')
ch_generate <- function(..., n = 10) {
  choices <- unlist(list(...))
  if (length(choices) == 0) choices <- c("name", "job", "phone_number")
  stopifnot(inherits(choices, "character"))

  if (!all(choices %in% all_choices)) {
    stop("column name must be selected from allowed options, see docs", call. = FALSE)
  }
  cols <- stats::setNames(
    lapply(choices, function(z) {
      eval(parse(text = paste0("ch_", z, "s")))(n)
    }),
    choices
  )
  tibble::as_data_frame(cols)

  # tibble::data_frame(
  #   name = ch_names(n),
  #   job = ch_jobs(n),
  #   phone = ch_phone_numbers(n)
  # )
}

all_choices <- c("name", "job", "phone_number", "currency",
                 "color_name", "rgb_color", "rgb_css_color")
