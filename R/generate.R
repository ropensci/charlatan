#' Generate a fake dataset
#'
#' @export
#' @param ... columns to include. must be in the allowed set. See
#' **Allowed column names** below. Three default columns are included
#' (name, job, phone_number) if nothing is specified - but are overridden
#' by any input.
#' @template params
#' @param locale (character) the locale to use. options: only supported
#' for data types that have locale support, See each data provider for
#' details.
#' @section Allowed column names:
#'
#' - name (default included)
#' - job (default included)
#' - phone_number (default included)
#' - currency
#' - color_name
#' - rgb_color
#' - rgb_css_color
#'
#' @examples
#' ch_generate()
#' ch_generate(n = 1)
#' ch_generate(n = 100)
#'
#' ch_generate("job")
#' ch_generate("job", "name")
#' ch_generate("job", "color_name")
#'
#' # locale
#' ch_generate(locale = "en_US")
#' ch_generate(locale = "fr_FR")
#' ch_generate(locale = "fr_CH")
ch_generate <- function(..., n = 10, locale = NULL) {
  choices <- unlist(list(...))
  if (length(choices) == 0) choices <- c("name", "job", "phone_number")
  # stopifnot(inherits(choices, "character"))
  assert(choices, "character")

  if (!all(choices %in% all_choices)) {
    stop("column name must be selected from the following:\n  ",
      paste0(all_choices, collapse = "\n  "),
      call. = FALSE
    )
  }
  cols <- stats::setNames(
    lapply(choices, function(z) {
      fun <- eval(parse(text = paste0("ch_", z)))
      if ("locale" %in% names(formals(fun))) {
        fun(n, locale = locale)
      } else {
        fun(n)
      }
    }),
    choices
  )
  tibble::as_tibble(cols)
}

all_choices <- c(
  "name", "job", "phone_number", "currency",
  "color_name", "rgb_color", "rgb_css_color"
)
