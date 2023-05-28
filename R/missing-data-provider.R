#' @title MissingDataProvider
#' @description make missing data
#' @export
#' @keywords internal
#' @examples
#' z <- MissingDataProvider$new()
#' z$make_missing(x = letters)
MissingDataProvider <- R6::R6Class(
  "MissingDataProvider",
  inherit = BareProvider,
  public = list(
    #' @description make missing data
    #' @param x a vector of characters, numeric, integers, logicals, etc
    #' @details This method picks a random number (`N`) of slots in
    #' the input vector `x` (up to `length(x)`). Then picks `N` random
    #' positions and replaces them with NA matching the input class.
    make_missing = function(x) {
      n <- super$random_element(seq_along(x))
      na_value <- switch(class(x),
        character = NA_character_,
        numeric = NA_integer_,
        integer = NA_integer_,
        NA
      )
      pos <- sample(seq_along(x), size = n, replace = FALSE)
      x[pos] <- rep(na_value, times = length(seq_len(n)))
      return(x)
    }
  )
)
