# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/__init__.py

#' BaseProvider
#'
#' @keywords internal
#' @examples \donttest{
#' (x <- BaseProvider$new())
#'
#' x$numerify("#%%asdf221?")
#' x$lexify("#%%asdf221?")
#' x$bothify("#%%asdf221?")
#'
#' z <- PhoneNumberProvider$new()
#' x$numerify(z$random_format())
#'
#' x$random_letter()
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

    random_letter = function() {
      # Returns a random letter (between a-z and A-Z)
      self$random_element(c(letters, LETTERS))
    },

    numerify = function(text = '###') {
      text <- do_match(text, "#", self$random_digit)
      text <- do_match(text, "%", self$random_digit_not_null)
      text <- do_match(text, "!", self$random_digit_or_empty)
      text <- do_match(text, "@", self$random_digit_not_null_or_empty)
      return(text)
    },

    lexify = function(text = '????') {
      # Replaces all question mark ('?') occurrences with a random letter
      do_match(text, "?", self$random_letter)
    },

    bothify = function(text = '## ??') {
      # Replaces all placeholders with random numbers and letters.
      self$lexify(self$numerify(text))
    }
  )
)

n_matches <- function(text, pattern) {
  tmp <- gregexpr(paste0("\\", pattern), text)[[1]]
  if (length(tmp) == 1) {
    if (tmp == -1) 0 else tmp
  } else {
    length(tmp)
  }
}

replace_loop <- function(x, pattern, repl) {
  for (i in seq_along(repl)) {
    x <- sub(paste0("\\", pattern), repl[i], x)
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
