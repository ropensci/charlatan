#' BaseProvider
#'
#' @keywords internal
#' @examples \donttest{
#' (x <- BaseProvider$new())
#'
#' z <- PhoneNumberProvider$new()
#' x$numerify(z$random_format())
#' }
BaseProvider <- R6::R6Class(
  'BaseProvider',
  public = list(
    random_element = function(x) {
      sample(x, size = 1)
    },

    random_int = function(min=0, max=9999) {
      floor(runif(1, min, max))
    },

    random_digit = function() {
      sample(0:9, size = 1)
    },

    random_digit_not_null = function() {
      sample(1:9, size = 1)
    },

    random_digit_or_empty = function() {
      if (sample(0:1, size = 1) == 1) {
        sample(0:9, size = 1)
      } else {
        ''
      }
    },

    random_digit_not_null_or_empty = function() {
      if (sample(0:1, size = 1) == 1) {
        sample(1:9, size = 1)
      } else {
        ''
      }
    },

    numerify = function(text = '###') {
      text <- do_match(text, "#", self$random_digit)
      text <- do_match(text, "%", self$random_digit_not_null())
      text <- do_match(text, "!", self$random_digit_or_empty())
      text <- do_match(text, "@", self$random_digit_not_null_or_empty())
      return(text)
    }
  )
)

n_matches <- function(text, pattern) {
  tmp <- gregexpr(pattern, text)[[1]]
  if (length(tmp) == 1) {
    if (tmp == -1) 0 else tmp
  } else {
    length(tmp)
  }
}

replace_loop <- function(x, pattern, repl) {
  for (i in seq_along(repl)) {
    x <- sub(pattern, repl[i], x)
  }
  return(x)
}

do_match <- function(text, pattern, fun) {
  nm <- n_matches(text, pattern)
  if (nm > 0) {
    pat <- replicate(nm, eval(fun)())
    replace_loop(text, pattern, pat)
  } else {
    return(text)
  }
}
