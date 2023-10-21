#' @title SSNProvider United States
#' @inherit SSNProvider description details return
#' @export
#' @family en
#' @family US
#' @examples
#' z <- SSNProvider_en_US$new()
#' z$render()
SSNProvider_en_US <- R6Class(
  inherit = SSNProvider,
  "SSNProvider_en_US",
  public = list(
    #' @description Make a SSN
    render = function() {
      # Adapted from https://github.com/joke2k/faker/blob/e14abc47e5f1ea7ce62f068c4aac6b9f51db6f5c/faker/providers/ssn/en_US/__init__.py#L219-L231

      # Certain numbers are invalid for United States Social Security
      # Numbers. The area (first 3 digits) cannot be 666 or 900-999.
      # The group number (middle digits) cannot be 00. The serial
      # (last 4 digits) cannot be 0000.

      area <- sample.int(898, 1)
      group <- sample.int(99, 1)
      serial <- sample.int(9999, 1)

      if (area >= 666) area <- area + 1

      sprintf("%03d-%02d-%04d", area, group, serial)
    }
  ),
  private = list(
    locale_ = "en_US"
  )
)

#' @title SSNProvider the Netherlands
#' @inherit SSNProvider description details return
#' @export
#' @family nl
#' @family NL
#' @examples
#' z <- SSNProvider_nl_NL$new()
#' z$render()
SSNProvider_nl_NL <- R6Class(
  inherit = SSNProvider,
  "SSNProvider_nl_NL",
  public = list(
    #' @description Make a SSN
    #'  Dutch SSN (BSN) is 9 digits that follow a certain proof (elfproef).
    render = function() {
      first_8 <- as.integer(strsplit(as.character(as.integer(runif(1) * 1e8)), "")[[1]])
      if (length(first_8) == 7) {
        first_8[8] <- 1
      }
      final_number <- (
        9 * first_8[1] +
          +8 * first_8[2] +
          +7 * first_8[3] +
          +6 * first_8[4] +
          +5 * first_8[5] +
          +4 * first_8[6] +
          +3 * first_8[7] +
          +2 * first_8[8]
      ) %% 11

      bsn <- paste0(c(first_8, final_number), collapse = "")
      bsn
    }
  ),
  private = list(
    locale_ = "nl_NL"
  )
)
