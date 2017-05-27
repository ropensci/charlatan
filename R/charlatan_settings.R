#' charlatan settings
#'
#' @export
#' @param messy (logical) make some messy data. Default: \code{FALSE}
#' @section More deets:
#' \itemize{
#'  \item \code{messy} - When \code{FALSE}, nothing is different from normal.
#'  When \code{TRUE}, we select incorrect/wrong values with probability X.
#'  Messy mode is only available for \strong{en-US} for now, and only for
#'  some data types.
#' }
#'
#' @examples
#' charlatan_settings()
#' charlatan_settings(messy = TRUE)
#' charlatan_settings(messy = FALSE)
charlatan_settings <- function(messy = FALSE) {
  assert(messy, "logical")
  charlatan_settings_env$messy <- messy
  as.list(stats::setNames(
    mget(ls(envir = charlatan_settings_env), envir = charlatan_settings_env),
    ls(envir = charlatan_settings_env)
  ))
}
