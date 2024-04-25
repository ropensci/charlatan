#' @title ISBNProvider
#' @description International Standard Book Number - Provider.
#' ISBN starts with group code, all English language ISBN-10 codes
#' start with a 0 or 1, and all German language books start with a 3.
#' see <https://en.wikipedia.org/wiki/List_of_ISBN_registration_groups>.
#'
#' Charlatan does not provide further helpers for you, but you can supply the
#' prefix yourself, if for instance you want to create Mexican ISBNs you can
#' by supplying the ISBN10 prefix 970, or for Andorra supply the ISBN 13 prefix
#' 97899920 (that is 978 for ISBN13, and 99920 for Andorra).
#'
#' @param n (integer) number of ISBN10s to make, default=1
#' @param prefix (integer/character) prefix for ISBN
#' @export
#' @examples
#' z <- ISBNProvider$new()
#' z$isbn10()
#' z$isbn13()
#' z$isbn10(10)
#' z$isbn13(100)
#' # or even z$isbn10(500)
ISBNProvider <- R6::R6Class(
  "ISBNProvider",
  inherit = BareProvider,
  public = list(
    #' @description Make a ISBN10
    #' This is a completely random (apart from the prefix), but valid ISBN10 number.
    isbn10 = function(n = 1, prefix = NULL) {
      replicate(n, private$generate_isbn10(prefix = prefix))
    },
    #' @description Make a ISBN13.
    #' This is a completely random (apart from the prefix), but valid ISBN13 number.
    isbn13 = function(n = 1, prefix = NULL) {
      replicate(n, private$generate_isbn13(prefix = prefix))
    }
  ),
  private = list(
    provider_ = "ISBNProvider",
    generate_isbn10 = function(prefix = NULL) {
      first9isbn <- sample(0:9, size = 9, replace = TRUE)
      if (!is.null(prefix)) {
        first9isbn <- private$subst_vector(prefix, first9isbn)
      }
      final_number <- private$generate_isbn10_checkdigit(first9isbn)
      isbn <- paste0(c(first9isbn, final_number), collapse = "")
      isbn
    },
    generate_isbn10_checkdigit = function(first9isbn) {
      first_9 <- as.integer(first9isbn)
      if (length(first_9) != 9) {
        stop("needs exactly 9 tokens")
      }
      final_number <- 11 - (checksum_util(first_9, 10:2) %% 11)
      final_number <- final_number %% 11
      if (final_number == 10) {
        final_number <- "X"
      }
      as.character(final_number)
    },
    generate_isbn13 = function(prefix = NULL) {
      first12isbn <- sample(0:9, 12, replace = TRUE)
      if (!is.null(prefix)) {
        first12isbn <- private$subst_vector(prefix, first12isbn)
      }
      final_number <- private$generate_isbn13_checkdigit(first12isbn)
      isbn <- paste0(c(first12isbn, final_number), collapse = "")
      isbn
    },
    generate_isbn13_checkdigit = function(first12isbn) {
        # first12isbn should be a vector of 12 long.
      first_12 <- as.integer(first12isbn)
      if (length(first_12) != 12) {
        stop("needs exactly 12 tokens")
      }
      final_number <- 10 - (checksum_util(first_12, rep(c(1, 3), 6)) %% 10)
      if (final_number == 10) {
        final_number <- 0
      }
      final_number
    },
    subst_vector = function(prefix, vector) {
      step <- nchar(prefix)
      max_n <- length(vector)
      if (step > max_n) {
        step <- max_n
      }
      values <- strsplit(as.character(prefix), "")[[1]]
      vector[1:step] <- values[1:step]
      as.integer(vector)
    }
  )
)
