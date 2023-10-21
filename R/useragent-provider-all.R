#' @title UserAgentProvider for United States of America
#' @inherit UserAgentProvider description details return
#' @export
#' @family en
#' @family US
#' @examples
#' (x <- UserAgentProvider_en_US$new())
#' x$locale
#' x$mac_processor()
#' x$linux_processor()
#' x$user_agent()
#' x$chrome()
#' x$firefox()
#' x$internet_explorer()
#' x$opera()
#' x$safari()
UserAgentProvider_en_US <- R6::R6Class(
  lock_objects = FALSE,
  "UserAgentProvider_en_US",
  inherit = UserAgentProvider,
  private = list(
    locale_ = "en_US"
  )
)
