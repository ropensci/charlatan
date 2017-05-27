#' charlatan settings
#'
#' @export
#' @param messy (logical) make some messy data. Default: \code{NULL}
#' @section More deets:
#' \itemize{
#'  \item \code{messy} - When \code{FALSE}, nothing is different from normal.
#'  When \code{TRUE}, we select incorrect/wrong values with probability X.
#'  Messy mode is only available for \strong{en-US} for now, and only for
#'  some data types. The default setting is \code{NULL}, meaning it is
#'  ignored.
#' }
#'
#' @examples
#' charlatan_settings()
#' charlatan_settings(messy = TRUE)
#' charlatan_settings(messy = FALSE)
#'
#' # with PersonProvider - overrides local messy param in all cases
#' x <- PersonProvider$new()
#' x$messy
#' charlatan_settings(messy = TRUE)
#' x <- PersonProvider$new()
#' x$messy
charlatan_settings <- function(messy = NULL) {
  assert(messy, "logical")
  charlatan_settings_env$global_messy <- messy
  as.list(stats::setNames(
    mget(ls(envir = charlatan_settings_env), envir = charlatan_settings_env),
    ls(envir = charlatan_settings_env)
  ))
}
